.class public Lpl/brightinventions/slf4android/HandlerFormatterCompiler;
.super Ljava/lang/Object;
.source "HandlerFormatterCompiler.java"


# instance fields
.field private final configuration:Lpl/brightinventions/slf4android/LoggerPatternConfiguration;


# direct methods
.method public constructor <init>(Lpl/brightinventions/slf4android/LoggerPatternConfiguration;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lpl/brightinventions/slf4android/HandlerFormatterCompiler;->configuration:Lpl/brightinventions/slf4android/LoggerPatternConfiguration;

    return-void
.end method


# virtual methods
.method public compile(Ljava/lang/String;)Lpl/brightinventions/slf4android/LogRecordFormatter;
    .locals 8

    .line 11
    new-instance v0, Lpl/brightinventions/slf4android/ListLogRecordFormatter;

    invoke-direct {v0}, Lpl/brightinventions/slf4android/ListLogRecordFormatter;-><init>()V

    .line 12
    :goto_0
    invoke-static {p1}, Lpl/brightinventions/slf4android/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const v1, 0x7fffffff

    .line 15
    iget-object v2, p0, Lpl/brightinventions/slf4android/HandlerFormatterCompiler;->configuration:Lpl/brightinventions/slf4android/LoggerPatternConfiguration;

    invoke-interface {v2}, Lpl/brightinventions/slf4android/LoggerPatternConfiguration;->getPatterns()Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move-object v1, v3

    const v4, 0x7fffffff

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lpl/brightinventions/slf4android/LoggerPattern;

    .line 16
    invoke-virtual {v5}, Lpl/brightinventions/slf4android/LoggerPattern;->getPattern()Ljava/lang/String;

    move-result-object v6

    .line 17
    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    if-ge v6, v4, :cond_0

    move-object v1, v5

    move v4, v6

    goto :goto_1

    :cond_1
    if-eqz v1, :cond_3

    if-lez v4, :cond_2

    .line 25
    new-instance v2, Lpl/brightinventions/slf4android/ConstLoggerValueSupplier;

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lpl/brightinventions/slf4android/ConstLoggerValueSupplier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lpl/brightinventions/slf4android/ListLogRecordFormatter;->add(Lpl/brightinventions/slf4android/LoggerPatternValueSupplier;)V

    .line 27
    :cond_2
    invoke-virtual {v0, v1}, Lpl/brightinventions/slf4android/ListLogRecordFormatter;->add(Lpl/brightinventions/slf4android/LoggerPatternValueSupplier;)V

    .line 28
    invoke-virtual {v1}, Lpl/brightinventions/slf4android/LoggerPattern;->getPattern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v4, v1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 30
    :cond_3
    new-instance v1, Lpl/brightinventions/slf4android/ConstLoggerValueSupplier;

    invoke-direct {v1, p1}, Lpl/brightinventions/slf4android/ConstLoggerValueSupplier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lpl/brightinventions/slf4android/ListLogRecordFormatter;->add(Lpl/brightinventions/slf4android/LoggerPatternValueSupplier;)V

    move-object p1, v3

    goto :goto_0

    :cond_4
    return-object v0
.end method
