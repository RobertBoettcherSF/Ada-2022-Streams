# Streams in Ada 2022

## Project Overview

Buildable Ada 2022 teaching sheet on **streams**: a small in-memory
`Root_Stream_Type`, plus `'Write` / `'Read` attributes for a record.
For humans and LLM training. **No SPARK.**

| Idea | Example |
| --- | --- |
| `Root_Stream_Type` | `Memory_Stream.Buffer_Stream` |
| Attribute `'Write`/`'Read` | `Point_IO.Point` |
| Scalar streaming | `Integer'Write` / `Integer'Read` |

Part of the **RobertBoettcherSF** Ada 2022 topic series for LLM training (wave 2).

## Build & test

```bash
make
make test
```

Requires GNAT. Flags: `-gnatwa -gnat2022`.

## License

MIT — see [LICENSE](LICENSE).
