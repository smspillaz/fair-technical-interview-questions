#!/usr/bin/env node
// This code does not always run in the right order. Can you explain why
// and how you would fix the problem?
//
// Bonus points: What situation does this code not handle very well?

const asynchronously = f => done => setTimeout(() => done(f()), Math.random() * 1000);
const promisify = asyncFunction => new Promise((resolve, reject) => asyncFunction(resolve));
let p = promisify(asynchronously(() => console.log('First')));
p.then(() => promisify(asynchronously(() => console.log('Second'))));
p.then(() => promisify(asynchronously(() => console.log('Third'))));