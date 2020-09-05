import React from 'react';
import '../Styles/Search.css';

const Search = (props) => {
    return (
        <div className="searchbar_div" >
            <span role="img" aria-label="magnifying glass" >🔎</span>
            <input
                className="searchbar"
                onChange={event => props.handleSearch(event)}
                type="text"
                placeholder={"Search Recipe Titles"}
            />
        </div>
    )
  }
  
  export default Search