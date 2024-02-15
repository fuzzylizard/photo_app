import React from "react";
import { Link } from "react-router-dom";

function Home() {
    return (
        <div>
            <h1>Photo App, Welcome!!!</h1>

            <p>A curated list of photos for your viewing pleasure. enjoy</p>

            <Link to="/photos" role="button">
                View Photos
            </Link>
        </div>
    )
};

export default Home;
