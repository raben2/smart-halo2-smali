.class Lpl/brightinventions/slf4android/ListLogRecordFormatter;
.super Ljava/lang/Object;
.source "ListLogRecordFormatter.java"

# interfaces
.implements Lpl/brightinventions/slf4android/LogRecordFormatter;


# instance fields
.field private valueSuppliers:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lpl/brightinventions/slf4android/LoggerPatternValueSupplier;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lpl/brightinventions/slf4android/ListLogRecordFormatter;->valueSuppliers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-void
.end method


# virtual methods
.method public add(Lpl/brightinventions/slf4android/LoggerPatternValueSupplier;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 21
    iget-object v0, p0, Lpl/brightinventions/slf4android/ListLogRecordFormatter;->valueSuppliers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    return-void

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "supplier must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public format(Lpl/brightinventions/slf4android/LogRecord;)Ljava/lang/String;
    .locals 3

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    iget-object v1, p0, Lpl/brightinventions/slf4android/ListLogRecordFormatter;->valueSuppliers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/brightinventions/slf4android/LoggerPatternValueSupplier;

    .line 12
    invoke-interface {v2, p1, v0}, Lpl/brightinventions/slf4android/LoggerPatternValueSupplier;->append(Lpl/brightinventions/slf4android/LogRecord;Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
