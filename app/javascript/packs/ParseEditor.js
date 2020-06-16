import $ from 'jquery';

$(document).ready(() => {
  const container = document.querySelector('#container-editor')
  const blocks = JSON.parse(container.dataset.editor || '{}').blocks || []

  blocks.map((block) => {
    if(block.type === 'paragraph'){
      const paragraph = document.createElement('p')
      paragraph.innerHTML = block.data.text
      container.appendChild(paragraph)
    }
     if (block.type === 'header') {
      const header = document.createElement('h1')
      header.innerHTML = block.data.text
      container.appendChild(header)
    }
      // if (block.type === 'list') {
      //     const list = document.createElement('li')
      //     var blockArray = block.data.items
      //     for (var i = 0; i < blockArray.length; i++) {
      //         list.innerHTML = blockArray[i]
      //         container.appendChild(blockArray[i])
      //     }
      // }

  })
})