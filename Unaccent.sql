create language plperlu;
CREATE OR REPLACE FUNCTION unaccent(TEXT) RETURNS TEXT AS
$$
    use Text::Unaccent;
    return unac_string('UTF8', $_[0]);
$$ LANGUAGE plperlu IMMUTABLE STRICT;

