.class public Lcom/instabug/featuresrequest/f/b;
.super Ljava/lang/Object;
.source "PerSessionSettings.java"


# static fields
.field private static c:Lcom/instabug/featuresrequest/f/b;


# instance fields
.field private a:Z

.field private b:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/instabug/featuresrequest/f/b;->a:Z

    .line 3
    iput-boolean v0, p0, Lcom/instabug/featuresrequest/f/b;->b:Z

    return-void
.end method

.method public static declared-synchronized c()Lcom/instabug/featuresrequest/f/b;
    .locals 2

    const-class v0, Lcom/instabug/featuresrequest/f/b;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/instabug/featuresrequest/f/b;->c:Lcom/instabug/featuresrequest/f/b;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/instabug/featuresrequest/f/b;

    invoke-direct {v1}, Lcom/instabug/featuresrequest/f/b;-><init>()V

    sput-object v1, Lcom/instabug/featuresrequest/f/b;->c:Lcom/instabug/featuresrequest/f/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/instabug/featuresrequest/f/b;->b:Z

    return-void
.end method

.method public a()Z
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/instabug/featuresrequest/f/b;->b:Z

    return v0
.end method

.method public b(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/instabug/featuresrequest/f/b;->a:Z

    return-void
.end method

.method public b()Z
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/instabug/featuresrequest/f/b;->a:Z

    return v0
.end method
