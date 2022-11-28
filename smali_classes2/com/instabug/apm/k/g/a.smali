.class public Lcom/instabug/apm/k/g/a;
.super Ljava/lang/Object;
.source "PriorityThreadFactory.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private final a:I

.field private b:Lcom/instabug/apm/logger/a/a;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/instabug/apm/e/a;->d()Lcom/instabug/apm/logger/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/instabug/apm/k/g/a;->b:Lcom/instabug/apm/logger/a/a;

    .line 5
    iput p1, p0, Lcom/instabug/apm/k/g/a;->a:I

    return-void
.end method

.method static synthetic a(Lcom/instabug/apm/k/g/a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/instabug/apm/k/g/a;->a:I

    return p0
.end method

.method static synthetic b(Lcom/instabug/apm/k/g/a;)Lcom/instabug/apm/logger/a/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/apm/k/g/a;->b:Lcom/instabug/apm/logger/a/a;

    return-object p0
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 1

    .line 1
    new-instance v0, Lcom/instabug/apm/k/g/a$a;

    invoke-direct {v0, p0, p1}, Lcom/instabug/apm/k/g/a$a;-><init>(Lcom/instabug/apm/k/g/a;Ljava/lang/Runnable;)V

    .line 12
    new-instance p1, Ljava/lang/Thread;

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    return-object p1
.end method
