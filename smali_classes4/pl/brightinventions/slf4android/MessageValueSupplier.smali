.class public Lpl/brightinventions/slf4android/MessageValueSupplier;
.super Ljava/lang/Object;
.source "MessageValueSupplier.java"

# interfaces
.implements Lpl/brightinventions/slf4android/LoggerPatternValueSupplier;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public append(Lpl/brightinventions/slf4android/LogRecord;Ljava/lang/StringBuilder;)V
    .locals 3

    .line 14
    invoke-virtual {p1}, Lpl/brightinventions/slf4android/LogRecord;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lpl/brightinventions/slf4android/LogRecord;->getParameters()[Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/slf4j/helpers/MessageFormatter;->arrayFormat(Ljava/lang/String;[Ljava/lang/Object;)Lorg/slf4j/helpers/FormattingTuple;

    move-result-object p1

    .line 15
    invoke-virtual {p1}, Lorg/slf4j/helpers/FormattingTuple;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 16
    invoke-virtual {p1}, Lorg/slf4j/helpers/FormattingTuple;->getThrowable()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 18
    new-instance v1, Ljava/io/StringWriter;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Ljava/io/StringWriter;-><init>(I)V

    .line 19
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 20
    invoke-virtual {p1, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 21
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    .line 22
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    .line 23
    invoke-virtual {v1}, Ljava/io/StringWriter;->flush()V

    .line 24
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 26
    :cond_0
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method
