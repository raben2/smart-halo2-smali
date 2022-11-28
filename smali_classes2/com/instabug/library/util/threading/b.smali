.class public Lcom/instabug/library/util/threading/b;
.super Ljava/lang/Object;
.source "PriorityThreadFactory.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/instabug/library/util/threading/b;->a:I

    return-void
.end method

.method static synthetic a(Lcom/instabug/library/util/threading/b;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/instabug/library/util/threading/b;->a:I

    return p0
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 1

    .line 1
    new-instance v0, Lcom/instabug/library/util/threading/b$a;

    invoke-direct {v0, p0, p1}, Lcom/instabug/library/util/threading/b$a;-><init>(Lcom/instabug/library/util/threading/b;Ljava/lang/Runnable;)V

    .line 13
    new-instance p1, Ljava/lang/Thread;

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    return-object p1
.end method
