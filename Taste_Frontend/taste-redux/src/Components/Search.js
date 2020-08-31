import React from 'react'

const Search = (props) => {
    return (
      
        <input
          className="searchbar"
          onChange={event => props.handleSearch(event)}
          type="text"
          placeholder={"Search Recipe Titles"}
        />
    )
  }
  
  export default Search