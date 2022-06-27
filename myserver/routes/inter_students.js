const express = require('express');
const conn = require('../utils/dbconnect.js')
const router = express.Router();

//show all
router.get('/api/inter_students', (req, res) => {
    let sql = "SELECT * FROM inter_students";
    let query = conn.query(sql, (err, results) => {
        if (err) throw err;
        res.send(JSON.stringify({ "status": 200, "error": null, "response": results }));
    });
});
///////////get sum_applicant by type//////////////////////////////////////////////////////////
router.get('/api/sum_applicant', (req, res) => {
    let sql = "SELECT type, sum(number) sum_no FROM inter_students GROUP BY type;"
    let query = conn.query(sql, (err, results) => {
        if (err) throw err;
        res.send(JSON.stringify({ "status": 200, "error": null, "response": results }));
    });
});


router.get('/api/subtype_applicant', (req, res) => {
    let sql = "SELECT subtype, sum(number) sum_no FROM inter_students GROUP BY subtype;"
    let query = conn.query(sql, (err, results) => {
        if (err) throw err;
        res.send(JSON.stringify({ "status": 200, "error": null, "response": results }));
    });
});

router.get('/api/academicyeah', (req, res) => {
    let sql = "SELECT academic_year, sum(number) sum_no FROM inter_students GROUP BY academic_year;"
    let query = conn.query(sql, (err, results) => {
        if (err) throw err;
        res.send(JSON.stringify({ "status": 200, "error": null, "response": results }));
    });
});

router.get('/api/score', (req, res) => {
    let sql = "SELECT english_score, sum(number) sum_no FROM inter_students GROUP BY english_score;"
    let query = conn.query(sql, (err, results) => {
        if (err) throw err;
        res.send(JSON.stringify({ "status": 200, "error": null, "response": results }));
    });
});

router.get('/api/country', (req, res) => {
    let sql = "SELECT country, sum(number) sum_no FROM inter_students GROUP BY country;"
    let query = conn.query(sql, (err, results) => {
        if (err) throw err;
        res.send(JSON.stringify({ "status": 200, "error": null, "response": results }));
    });
});

router.get('/api/result', (req, res) => {
    let sql = "SELECT result, sum(number) sum_no FROM inter_students GROUP BY result;"
    let query = conn.query(sql, (err, results) => {
        if (err) throw err;
        res.send(JSON.stringify({ "status": 200, "error": null, "response": results }));
    });
});

router.get('/api/school', (req, res) => {
    let sql = "SELECT school, sum(number) sum_no FROM inter_students GROUP BY school;"
    let query = conn.query(sql, (err, results) => {
        if (err) throw err;
        res.send(JSON.stringify({ "status": 200, "error": null, "response": results }));
    });
});

router.get('/api/programme', (req, res) => {
    let sql = "SELECT programme, sum(number) sum_no FROM inter_students GROUP BY programme;"
    let query = conn.query(sql, (err, results) => {
        if (err) throw err;
        res.send(JSON.stringify({ "status": 200, "error": null, "response": results }));
    });
});
///////////////////////////////////////////////////////////////////////////////////////
//show single 
router.get('/api/inter_students/:id', (req, res) => {
    let sql = "SELECT * FROM inter_students WHERE applicant_no =" + req.params.id;
    let query = conn.query(sql, (err, results) => {
        if (err) throw err;
        res.send(JSON.stringify({ "status": 200, "error": null, "response": results }));
    });
});


router.post('/api/inter_students', (req, res) => {
    let data = { 
        applicant_no: req.body.applicant_no,
        type: req.body.type,
        subtype: req.body.subtype,
        academic_year: req.body.academic_year,
        result: req.body.result,
        conditions: req.body.conditions,
        english_type: req.body.english_type,
        english_score: req.body.english_score,
        title: req.body.title,
        first_name: req.body.first_name,
        middle_name: req.body.middle_name,
        last_name:req.body.last_name,
        gender:req.body.gender,
        country:req.body.country,
        city:req.body.city,
        school:req.body.school,
        degree:req.body.degree,
        programme:req.body.programme,
        news_online:req.body.news_online,
        news_embassy:req.body.news_embassy,
        news_university:req.body.news_university,
        news_exhibition:req.body.news_exhibition,
        news_newsletter:req.body.news_newsletter,
        news_friend:req.body.news_friend,
        news_agent:req.body.news_agent,
        contact_email:req.body.contact_email,
        contact_phone:req.body.contact_phone,
        contact_facebook:req.body.contact_facebook,
        contact_other:req.body.contact_other,
        number:req.body.number,
    };
    let sql = "INSERT INTO inter_students SET ?";
    let query = conn.query(sql, data, (err, results) => {
        if (err) throw err;
        res.send(JSON.stringify({
            "status": 200, "error": null,
            "response": results
        }));
    });
});

router.put('/api/inter_students/:id', (req, res) => {
    let sql = "UPDATE inter_students SET applicant_no ='" + req.body.applicant_no
    + "',type='"+req.body.type
    + "',subtype='"+req.body.subtype
    + "',academic_year='"+req.body.academic_year
    + "',result='"+req.body.result
    + "',conditions='"+req.body.conditions
    + "',english_type='"+req.body.english_type
    + "',english_score='"+req.body.english_score
    + "',title='"+req.body.title
    + "',first_name='"+req.body.first_name 
    + "',middle_name='"+req.body.middle_name 
    + "',last_name='"+req.body.last_name
    +"',gender='"+req.body.gender
    +"',country='"+req.body.country
    +"',city='"+req.body.city
    +"',school='"+req.body.school
    +"',degree='"+req.body.degree
    +"',programme='"+req.body.programme
    +"',news_online='"+req.body.news_online
    +"',news_embassy='"+req.body.news_embassy
    +"',news_university='"+req.body.news_university
    +"',news_exhibition='"+req.body.news_exhibition
    +"',news_newsletter='"+req.body.news_newsletter
    +"',news_friend='"+req.body.news_friend
    +"',news_agent='"+req.body.news_agent
    +"',contact_email='"+req.body.contact_email
    +"',contact_phone='"+req.body.contact_phone
    +"',contact_facebook='"+req.body.contact_facebook
    +"',contact_other='"+req.body.contact_other
    +"' WHERE applicant_no = " + req.params.id;
    let query = conn.query(sql, (err, results) => {
        if (err) throw err;
        res.send(JSON.stringify({
            "status": 200, "error": null,
            "response": results
        }));
    });
});

router.delete('/api/inter_students/:id', (req, res) => {
    let sql = "DELETE FROM inter_students WHERE applicant_no=" + req.params.id;
    let query = conn.query(sql, (err, results) => {
        if (err) throw err;
        res.send(JSON.stringify({
            "status": 200, "error": null,
            "response": results
        }));
    });
});




//Api
module.exports = router;