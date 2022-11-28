.class Lpl/brightinventions/slf4android/LoggerPattern;
.super Ljava/lang/Object;
.source "LoggerPattern.java"

# interfaces
.implements Lpl/brightinventions/slf4android/LoggerPatternValueSupplier;


# instance fields
.field private final pattern:Ljava/lang/String;

.field private final realSupplier:Lpl/brightinventions/slf4android/LoggerPatternValueSupplier;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lpl/brightinventions/slf4android/LoggerPatternValueSupplier;)V
    .locals 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    invoke-static {p1}, Lpl/brightinventions/slf4android/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 12
    iput-object p1, p0, Lpl/brightinventions/slf4android/LoggerPattern;->pattern:Ljava/lang/String;

    .line 13
    iput-object p2, p0, Lpl/brightinventions/slf4android/LoggerPattern;->realSupplier:Lpl/brightinventions/slf4android/LoggerPatternValueSupplier;

    return-void

    .line 10
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "patter is required got \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public append(Lpl/brightinventions/slf4android/LogRecord;Ljava/lang/StringBuilder;)V
    .locals 1

    .line 22
    iget-object v0, p0, Lpl/brightinventions/slf4android/LoggerPattern;->realSupplier:Lpl/brightinventions/slf4android/LoggerPatternValueSupplier;

    invoke-interface {v0, p1, p2}, Lpl/brightinventions/slf4android/LoggerPatternValueSupplier;->append(Lpl/brightinventions/slf4android/LogRecord;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method public getPattern()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lpl/brightinventions/slf4android/LoggerPattern;->pattern:Ljava/lang/String;

    return-object v0
.end method
