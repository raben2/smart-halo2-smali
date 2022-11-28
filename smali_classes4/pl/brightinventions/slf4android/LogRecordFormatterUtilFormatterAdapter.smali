.class Lpl/brightinventions/slf4android/LogRecordFormatterUtilFormatterAdapter;
.super Ljava/util/logging/Formatter;
.source "LogRecordFormatterUtilFormatterAdapter.java"


# instance fields
.field private final formatter:Lpl/brightinventions/slf4android/LogRecordFormatter;


# direct methods
.method public constructor <init>(Lpl/brightinventions/slf4android/LogRecordFormatter;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/util/logging/Formatter;-><init>()V

    .line 10
    iput-object p1, p0, Lpl/brightinventions/slf4android/LogRecordFormatterUtilFormatterAdapter;->formatter:Lpl/brightinventions/slf4android/LogRecordFormatter;

    return-void
.end method


# virtual methods
.method public format(Ljava/util/logging/LogRecord;)Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lpl/brightinventions/slf4android/LogRecordFormatterUtilFormatterAdapter;->formatter:Lpl/brightinventions/slf4android/LogRecordFormatter;

    invoke-static {p1}, Lpl/brightinventions/slf4android/LogRecord;->fromRecord(Ljava/util/logging/LogRecord;)Lpl/brightinventions/slf4android/LogRecord;

    move-result-object p1

    invoke-interface {v0, p1}, Lpl/brightinventions/slf4android/LogRecordFormatter;->format(Lpl/brightinventions/slf4android/LogRecord;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
