export const fetchSearchGiphys = (searchTerm) => (
  $.ajax({
    method: "GET",
    dataType: "json",
    url: "http://api.giphy.com/v1/gifs/search",
    data: {
      q: searchTerm,
      api_key: "dc6zaTOxFJmzC",
      limit: 2
    }
  })
);
