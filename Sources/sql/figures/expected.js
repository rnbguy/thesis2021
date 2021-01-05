function expected({ po, hbs }, Impl, S) {
  for (let hb of hbs) {
    for (let { lin, vis } of hb.lins()) {
      if (!S.isSatisfied(lin, vis))
        continue;
      let ret = {};
      for (let i of lin) {
        let seq = vis(i);
        let res = Impl.execute(seq);
        ret[i] = res[res.length - 1];
      }
      yield { hb, ret };
} } }