def filter():
    loaiTruong = request.form['loaiTruong']
    DH = TruongDH.query.filter_by(loaiTruong=loaiTruong).all()
    DH = [{'tenTruong': dh.tenTruong, 'maTruong': dh.maTruong, 'linkaccess': dh.linkaccess} for dh in DH]
    session['DH'] = DH
    return redirect(url_for('home'))