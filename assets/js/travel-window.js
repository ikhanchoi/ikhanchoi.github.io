
(() => {
  const source = document.getElementById("travel-source");
  if (!source) return;

  const parseDate = (iso) => {
    const [year, month, day] = iso.split("-").map(Number);
    return new Date(year, month - 1, day);
  };

  const now = new Date();
  const today = new Date(
    now.getFullYear(),
    now.getMonth(),
    now.getDate()
  );

  const pastYear = new Date(
    today.getFullYear() - 1,
    today.getMonth(),
    Math.min(
      today.getDate(),
      new Date(today.getFullYear() - 1, today.getMonth() + 1, 0).getDate()
    )
  );

  const upcoming = [];
  const past = [];

  for (const entry of source.querySelectorAll(".travel-entry")) {
    const start = parseDate(entry.dataset.start);
    const end = parseDate(entry.dataset.end);

    if (end >= today) {
      upcoming.push(entry);
    } else if (end >= pastYear) {
      past.push(entry);
    }
  }

  upcoming.sort((a, b) =>
    a.dataset.start.localeCompare(b.dataset.start)
  );

  past.sort((a, b) =>
    b.dataset.start.localeCompare(a.dataset.start)
  );

  const render = (id, heading, entries) => {
    const list = document.getElementById(id);
    const title = document.getElementById(heading);
    let previousYear = "";

    for (const entry of entries) {
      const year = entry.dataset.year;

      entry.querySelector(".travel-year").textContent =
        year !== previousYear ? year : "";

      list.appendChild(entry);
      previousYear = year;
    }

    if (entries.length > 0) {
      list.hidden = false;
      title.hidden = false;
    }
  };

  render("travel-upcoming", "upcoming-heading", upcoming);
  render("travel-past", "past-heading", past);

  source.hidden = true;

  document.getElementById("travel-empty").hidden =
    upcoming.length + past.length !== 0;
})();
