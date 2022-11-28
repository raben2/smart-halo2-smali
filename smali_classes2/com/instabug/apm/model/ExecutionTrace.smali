.class public Lcom/instabug/apm/model/ExecutionTrace;
.super Ljava/lang/Object;
.source "ExecutionTrace.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/instabug/apm/model/ExecutionTrace;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final transient apmLogger:Lcom/instabug/apm/logger/a/a;

.field private final attrs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private endTimeMicro:J

.field private final transient executionTracesHandler:Lcom/instabug/apm/f/b/a;

.field private final transient executor:Ljava/util/concurrent/Executor;

.field private final id:J

.field private final name:Ljava/lang/String;

.field private startTime:J

.field private startTimeMicro:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/instabug/apm/model/ExecutionTrace$a;

    invoke-direct {v0}, Lcom/instabug/apm/model/ExecutionTrace$a;-><init>()V

    sput-object v0, Lcom/instabug/apm/model/ExecutionTrace;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "execution_traces_thread_executor"

    .line 23
    invoke-static {v0}, Lcom/instabug/apm/e/a;->a(Ljava/lang/String;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/instabug/apm/model/ExecutionTrace;->executor:Ljava/util/concurrent/Executor;

    .line 24
    invoke-static {}, Lcom/instabug/apm/e/a;->u()Lcom/instabug/apm/f/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/instabug/apm/model/ExecutionTrace;->executionTracesHandler:Lcom/instabug/apm/f/b/a;

    .line 25
    invoke-static {}, Lcom/instabug/apm/e/a;->d()Lcom/instabug/apm/logger/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/instabug/apm/model/ExecutionTrace;->apmLogger:Lcom/instabug/apm/logger/a/a;

    const-wide/16 v0, -0x1

    .line 33
    iput-wide v0, p0, Lcom/instabug/apm/model/ExecutionTrace;->endTimeMicro:J

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/instabug/apm/model/ExecutionTrace;->id:J

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 54
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lcom/instabug/apm/model/ExecutionTrace;->attrs:Ljava/util/Map;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 58
    iget-object v4, p0, Lcom/instabug/apm/model/ExecutionTrace;->attrs:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 60
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instabug/apm/model/ExecutionTrace;->name:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/instabug/apm/model/ExecutionTrace;->startTime:J

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/instabug/apm/model/ExecutionTrace;->startTimeMicro:J

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/instabug/apm/model/ExecutionTrace;->endTimeMicro:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
        value = {
            "DMI_RANDOM_USED_ONLY_ONCE"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "execution_traces_thread_executor"

    .line 2
    invoke-static {v0}, Lcom/instabug/apm/e/a;->a(Ljava/lang/String;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/instabug/apm/model/ExecutionTrace;->executor:Ljava/util/concurrent/Executor;

    .line 3
    invoke-static {}, Lcom/instabug/apm/e/a;->u()Lcom/instabug/apm/f/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/instabug/apm/model/ExecutionTrace;->executionTracesHandler:Lcom/instabug/apm/f/b/a;

    .line 4
    invoke-static {}, Lcom/instabug/apm/e/a;->d()Lcom/instabug/apm/logger/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/instabug/apm/model/ExecutionTrace;->apmLogger:Lcom/instabug/apm/logger/a/a;

    const-wide/16 v0, -0x1

    .line 12
    iput-wide v0, p0, Lcom/instabug/apm/model/ExecutionTrace;->endTimeMicro:J

    .line 16
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/instabug/apm/model/ExecutionTrace;->id:J

    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    iput-wide v0, p0, Lcom/instabug/apm/model/ExecutionTrace;->startTime:J

    .line 18
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/instabug/apm/model/ExecutionTrace;->startTimeMicro:J

    .line 19
    iput-object p1, p0, Lcom/instabug/apm/model/ExecutionTrace;->name:Ljava/lang/String;

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/instabug/apm/model/ExecutionTrace;->attrs:Ljava/util/Map;

    .line 21
    iget-object v0, p0, Lcom/instabug/apm/model/ExecutionTrace;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/instabug/apm/model/ExecutionTrace$b;

    invoke-direct {v1, p0, p1}, Lcom/instabug/apm/model/ExecutionTrace$b;-><init>(Lcom/instabug/apm/model/ExecutionTrace;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$000(Lcom/instabug/apm/model/ExecutionTrace;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/instabug/apm/model/ExecutionTrace;->id:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/instabug/apm/model/ExecutionTrace;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/instabug/apm/model/ExecutionTrace;->startTime:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/instabug/apm/model/ExecutionTrace;)Lcom/instabug/apm/f/b/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/apm/model/ExecutionTrace;->executionTracesHandler:Lcom/instabug/apm/f/b/a;

    return-object p0
.end method

.method static synthetic access$300(Lcom/instabug/apm/model/ExecutionTrace;)Lcom/instabug/apm/logger/a/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/apm/model/ExecutionTrace;->apmLogger:Lcom/instabug/apm/logger/a/a;

    return-object p0
.end method

.method static synthetic access$400(Lcom/instabug/apm/model/ExecutionTrace;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/instabug/apm/model/ExecutionTrace;->endTimeMicro:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/instabug/apm/model/ExecutionTrace;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/instabug/apm/model/ExecutionTrace;->startTimeMicro:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/instabug/apm/model/ExecutionTrace;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/apm/model/ExecutionTrace;->name:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/instabug/apm/model/ExecutionTrace;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/apm/model/ExecutionTrace;->attrs:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public end()V
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/instabug/apm/model/ExecutionTrace;->endTimeMicro:J

    .line 2
    iget-object v0, p0, Lcom/instabug/apm/model/ExecutionTrace;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/instabug/apm/model/ExecutionTrace$c;

    invoke-direct {v1, p0}, Lcom/instabug/apm/model/ExecutionTrace$c;-><init>(Lcom/instabug/apm/model/ExecutionTrace;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method getId()J
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iget-wide v0, p0, Lcom/instabug/apm/model/ExecutionTrace;->id:J

    return-wide v0
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_6

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 5
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x1e

    if-le v1, v2, :cond_1

    .line 7
    iget-object p2, p0, Lcom/instabug/apm/model/ExecutionTrace;->apmLogger:Lcom/instabug/apm/logger/a/a;

    const-string v0, "Trace attribute \"$s1\" wasn\'t added to \"$s2\" as it was too long. Please limit attribute key names to 30 characters."

    const-string v1, "$s1"

    .line 8
    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/instabug/apm/model/ExecutionTrace;->name:Ljava/lang/String;

    const-string v1, "$s2"

    .line 9
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-virtual {p2, p1}, Lcom/instabug/apm/logger/a/a;->e(Ljava/lang/String;)V

    return-void

    :cond_1
    if-eqz p2, :cond_3

    .line 16
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 17
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 18
    iget-object p1, p0, Lcom/instabug/apm/model/ExecutionTrace;->apmLogger:Lcom/instabug/apm/logger/a/a;

    const-string p2, "Trace attribute \"$s1\" wasn\'t added to \"$s2\". Trace attribute value can\'t be empty string."

    const-string v1, "$s1"

    .line 19
    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/instabug/apm/model/ExecutionTrace;->name:Ljava/lang/String;

    const-string v1, "$s2"

    .line 20
    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 21
    invoke-virtual {p1, p2}, Lcom/instabug/apm/logger/a/a;->e(Ljava/lang/String;)V

    return-void

    .line 26
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x3c

    if-le v1, v2, :cond_3

    .line 27
    iget-object p2, p0, Lcom/instabug/apm/model/ExecutionTrace;->apmLogger:Lcom/instabug/apm/logger/a/a;

    const-string v0, "Trace attribute \"$s1\" wasn\'t added to \"$s2\" as its value was too long. Please limit trace attribute values to 60 characters."

    const-string v1, "$s1"

    .line 28
    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/instabug/apm/model/ExecutionTrace;->name:Ljava/lang/String;

    const-string v1, "$s2"

    .line 29
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 30
    invoke-virtual {p2, p1}, Lcom/instabug/apm/logger/a/a;->e(Ljava/lang/String;)V

    return-void

    .line 36
    :cond_3
    iget-wide v1, p0, Lcom/instabug/apm/model/ExecutionTrace;->endTimeMicro:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_4

    .line 37
    iget-object p2, p0, Lcom/instabug/apm/model/ExecutionTrace;->apmLogger:Lcom/instabug/apm/logger/a/a;

    const-string v0, "Trace attribute \"$s1\" wasn\'t added to \"$s2\" because attribute was added after the trace had already ended."

    const-string v1, "$s1"

    .line 38
    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/instabug/apm/model/ExecutionTrace;->name:Ljava/lang/String;

    const-string v1, "$s2"

    .line 39
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 40
    invoke-virtual {p2, p1}, Lcom/instabug/apm/logger/a/a;->e(Ljava/lang/String;)V

    return-void

    :cond_4
    if-nez p2, :cond_5

    const/4 p1, 0x0

    goto :goto_0

    .line 45
    :cond_5
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 46
    :goto_0
    iget-object v1, p0, Lcom/instabug/apm/model/ExecutionTrace;->attrs:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iget-object p1, p0, Lcom/instabug/apm/model/ExecutionTrace;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/instabug/apm/model/ExecutionTrace$d;

    invoke-direct {v1, p0, v0, p2}, Lcom/instabug/apm/model/ExecutionTrace$d;-><init>(Lcom/instabug/apm/model/ExecutionTrace;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 48
    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/instabug/apm/model/ExecutionTrace;->apmLogger:Lcom/instabug/apm/logger/a/a;

    iget-object p2, p0, Lcom/instabug/apm/model/ExecutionTrace;->name:Ljava/lang/String;

    const-string v0, "Trace attribute wasn\'t added to \"$s\". Trace attribute key can\'t be null or empty string."

    const-string v1, "$s"

    invoke-virtual {v0, v1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/instabug/apm/logger/a/a;->e(Ljava/lang/String;)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/instabug/apm/model/ExecutionTrace;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2
    iget-object p2, p0, Lcom/instabug/apm/model/ExecutionTrace;->attrs:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget-object p2, p0, Lcom/instabug/apm/model/ExecutionTrace;->attrs:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p2, p0, Lcom/instabug/apm/model/ExecutionTrace;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8
    iget-wide v0, p0, Lcom/instabug/apm/model/ExecutionTrace;->startTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 9
    iget-wide v0, p0, Lcom/instabug/apm/model/ExecutionTrace;->startTimeMicro:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 10
    iget-wide v0, p0, Lcom/instabug/apm/model/ExecutionTrace;->endTimeMicro:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
