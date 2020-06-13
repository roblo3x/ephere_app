import EditorJS from '@editorjs/editorjs';
import Header from '@editorjs/header';
import Quote from '@editorjs/quote';
import RawTool from '@editorjs/raw';
import Checklist from '@editorjs/checklist';
import List from '@editorjs/list';
import Embed from '@editorjs/embed';
import InlineCode from '@editorjs/embed';
import CodeTool from '@editorjs/code';
import Paragraph from '@editorjs/paragraph';
import Marker from '@editorjs/marker';
import $ from 'jquery';
import axios from 'axios'

const originalData = JSON.parse(document.querySelector('#editorjs').dataset.editor || '{}')
console.log(originalData)

const editor = new EditorJS({
    holderId: 'editorjs',

    data: originalData,
    tools: {
        code: CodeTool,
        raw: RawTool,
        paragraph: {
            class: Paragraph,
            inlineToolbar: true,
        },
        header: {
            class: Header,
            config: {
                placeholder: 'Enter a header',
                levels: [2, 3, 4],
                defaultLevel: 3
            },
        },
        quote: {
            class: Quote,
            inlineToolbar: true,
            shortcut: 'CMD+SHIFT+O',
            config: {
                quotePlaceholder: 'Enter a quote',
                captionPlaceholder: 'Quote\'s author',
            },
        },
        checklist: {
            class: Checklist,
            inlineToolbar: true,
        },
        list: {
            class: List,
            inlineToolbar: true,
        },
        embed: {
            class: Embed,
            config: {
                services: {
                    youtube: true,
                    coub: true
                }
            }
        },
        inlineCode: {
            class: InlineCode,
            shortcut: 'CMD+SHIFT+M',
        },
        Marker: {
            class: Marker,
            shortcut: 'CMD+SHIFT+M',
        }
    },
})
let saveBtn = document.querySelector('#button');
saveBtn.addEventListener('click', function (event) {
    const title = document.querySelector('#title_input').value
    event.preventDefault()
    editor.save().then((outputData) => {
        axios.post('/lessons', {title: title, data: JSON.stringify(outputData)}).then((res) => console.log(res)).catch(() => console.log('Error have occured'))
    });
})
