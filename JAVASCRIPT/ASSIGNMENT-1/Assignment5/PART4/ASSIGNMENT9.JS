class Product {
  constructor({name, price, category = "General"}) {
    this.name = name;
    this.price = price;
    this.category = category;
  }

  getDetails = () => {
    const {name, price, category} = this;
    console.log(`${name} costs ${price} in ${category}`);
  }

  cloneWithChanges(changes) {
    return new Product({...this, ...changes});
  }
}

let prod = new Product({name:"Phone", price:20000});
prod.getDetails();