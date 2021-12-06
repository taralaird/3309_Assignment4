import "./App.css";
import React, { useState, useEffect } from "react";
import Axios from "axios";

const camelToTitleCase = (str) =>
  str
    .split(/([A-Z][a-z]*)/)
    .filter(Boolean)
    .map((word) => `${word[0].toUpperCase()}${word.slice(1)}`)
    .join(" ");

const objToString = (val) =>
  Object.entries(val)
    .map(([key, value]) => `${camelToTitleCase(key)}: ${value}`)
    .join(" | ");

function F1Page() {
  const [restaurantName, setRestaurantName] = useState("");
  const [menuList, setMenuList] = useState([]);

  const submitRestaurantName = () => {
    Axios.get("http://localhost:3001/api/menu", {
      params: { restaurantName: restaurantName },
    }).then((response) => {
      setMenuList(response.data);
    });
  };

  return (
    <div className="fnBackground">
      <p>Show all menu items for a specific restaurant</p>
      <p>Restaurant: </p>
      <input
        type="text"
        id="F1Field"
        name="restaurantName"
        onChange={(e) => {
          setRestaurantName(e.target.value);
        }}
      ></input>
      <button id="subBtn" onClick={submitRestaurantName}>
        Submit
      </button>
      <div></div>
      {menuList.map((val) => {
        return (
          <p key={val.itemName}>
            Item: {val.itemName} | Price: {val.price}{" "}
            {val.category && ` | Category: ${val.category}`}
          </p>
        );
      })}
    </div>
  );
}

function F2Page() {
  const [city, setCity] = useState("");
  const [restaurantList, setRestaurantList] = useState([]);

  const submitCity = () => {
    Axios.get("http://localhost:3001/api/restaurants", {
      params: { city: city },
    }).then((response) => {
      setRestaurantList(response.data);
    });
  };

  return (
    <div className="fnBackground">
      <p>Group all restaurants in a city by rating</p>
      <p>City: </p>
      <input
        type="text"
        id="F2Field"
        name="F2Field"
        onChange={(e) => {
          setCity(e.target.value);
        }}
      ></input>
      <button id="subBtn" onClick={submitCity}>
        Submit
      </button>
      <div></div>
      {restaurantList.map((val) => {
        return <p key={val.street}>{objToString(val)}</p>;
      })}
    </div>
  );
}

function F3Page() {
  const [area, setArea] = useState("");
  const [driverList, setDriverList] = useState([]);

  const submitArea = () => {
    Axios.get("http://localhost:3001/api/drivers", {
      params: { area: area },
    }).then((response) => {
      setDriverList(response.data);
    });
  };

  return (
    <div className="fnBackground">
      <p>List all available drivers in an area with an above average rating</p>
      <p>Area: </p>
      <input
        type="text"
        id="F3Field"
        name="F3Field"
        onChange={(e) => {
          setArea(e.target.value);
        }}
      ></input>
      <button id="subBtn" onClick={submitArea}>
        Submit
      </button>
      <div></div>
      {driverList.map((val) => {
        return <p key={val.licensePlate}>{objToString(val)}</p>;
      })}
    </div>
  );
}

function F4Page() {
  const [email, setEmail] = useState("");
  const [orderList, setOrderList] = useState([]);

  const submitEmail = () => {
    Axios.get("http://localhost:3001/api/orders", {
      params: { email: email },
    }).then((response) => {
      setOrderList(response.data);
    });
  };

  return (
    <div className="fnBackground">
      <p>Show all past orders made by a customer</p>
      <p>Email: </p>
      <input
        type="text"
        id="F4Field"
        name="F4Field"
        onChange={(e) => {
          setEmail(e.target.value);
        }}
      ></input>
      <button id="subBtn" onClick={submitEmail}>
        Submit
      </button>
      <div></div>
      {orderList.map((val) => {
        return <p key={val.orderNo}>{objToString(val)}</p>;
      })}
    </div>
  );
}

function F5Page() {
  const [customerList, setCustomerList] = useState([]);

  const submitMembership = (membership) => {
    Axios.get("http://localhost:3001/api/customers", {
      params: { membership: membership },
    }).then((response) => {
      setCustomerList(response.data);
    });
  };

  return (
    <div className="fnBackground">
      <p>Show all customers which have a certain level of membership</p>
      <p>Membership level: </p>
      <button id="bronzeBtn" className="Bronze" onClick={() => {
          submitMembership('Bronze');
        }}>
        Bronze
      </button>
      <button id="silverBtn" className="Silver" onClick={() => {
          submitMembership('Silver');
        }}>
        Silver
      </button>
      <button id="goldBtn" className="Gold" onClick={() => {
          submitMembership('Gold');
        }}>
        Gold
      </button>
      <div></div>
      {customerList.map((val) => {
        return <p key={val.email}>{objToString(val)}</p>;
      })}
    </div>
  );
}

export { F1Page, F2Page, F3Page, F4Page, F5Page };
