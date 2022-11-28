.class final Lpl/brightinventions/slf4android/LogRecord$1;
.super Ljava/lang/ThreadLocal;
.source "LogRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/brightinventions/slf4android/LogRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lpl/brightinventions/slf4android/LogRecord$1;->initialValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected initialValue()Ljava/lang/String;
    .locals 1

    .line 10
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
