.class public Lcom/instabug/survey/g/a;
.super Ljava/lang/Object;
.source "PerSessionSettings.java"


# static fields
.field private static j:Lcom/instabug/survey/g/a;


# instance fields
.field private a:Z

.field private b:Z

.field private c:Lcom/instabug/survey/OnShowCallback;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private d:Lcom/instabug/survey/OnDismissCallback;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private e:Z

.field private f:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private g:Lcom/instabug/survey/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private h:Ljava/lang/Boolean;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private i:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/instabug/survey/g/a;->a:Z

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/instabug/survey/g/a;->b:Z

    .line 8
    iput-boolean v0, p0, Lcom/instabug/survey/g/a;->e:Z

    const/4 v1, 0x0

    .line 13
    iput-object v1, p0, Lcom/instabug/survey/g/a;->h:Ljava/lang/Boolean;

    .line 15
    iput-boolean v0, p0, Lcom/instabug/survey/g/a;->i:Z

    return-void
.end method

.method public static declared-synchronized k()Lcom/instabug/survey/g/a;
    .locals 2

    const-class v0, Lcom/instabug/survey/g/a;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/instabug/survey/g/a;->j:Lcom/instabug/survey/g/a;

    if-nez v1, :cond_0

    .line 2
    invoke-static {}, Lcom/instabug/survey/g/a;->l()V

    .line 3
    :cond_0
    sget-object v1, Lcom/instabug/survey/g/a;->j:Lcom/instabug/survey/g/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static l()V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    new-instance v0, Lcom/instabug/survey/g/a;

    invoke-direct {v0}, Lcom/instabug/survey/g/a;-><init>()V

    sput-object v0, Lcom/instabug/survey/g/a;->j:Lcom/instabug/survey/g/a;

    return-void
.end method

.method public static declared-synchronized m()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ERADICATE_FIELD_NOT_NULLABLE"
        }
    .end annotation

    const-class v0, Lcom/instabug/survey/g/a;

    monitor-enter v0

    const/4 v1, 0x0

    .line 1
    :try_start_0
    sput-object v1, Lcom/instabug/survey/g/a;->j:Lcom/instabug/survey/g/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/instabug/survey/g/a;->i:Z

    return-void
.end method

.method public a(Lcom/instabug/survey/OnDismissCallback;)V
    .locals 0
    .param p1    # Lcom/instabug/survey/OnDismissCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    iput-object p1, p0, Lcom/instabug/survey/g/a;->d:Lcom/instabug/survey/OnDismissCallback;

    return-void
.end method

.method public a(Lcom/instabug/survey/OnShowCallback;)V
    .locals 0
    .param p1    # Lcom/instabug/survey/OnShowCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/instabug/survey/g/a;->c:Lcom/instabug/survey/OnShowCallback;

    return-void
.end method

.method public a(Lcom/instabug/survey/a;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/instabug/survey/g/a;->g:Lcom/instabug/survey/a;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/instabug/survey/g/a;->f:Ljava/lang/String;

    return-void
.end method

.method a(Z)V
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/instabug/survey/g/a;->e:Z

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/g/a;->f:Ljava/lang/String;

    return-object v0
.end method

.method public b(Z)V
    .locals 0

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/instabug/survey/g/a;->h:Ljava/lang/Boolean;

    return-void
.end method

.method public c()Lcom/instabug/survey/OnDismissCallback;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/g/a;->d:Lcom/instabug/survey/OnDismissCallback;

    return-object v0
.end method

.method public c(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/instabug/survey/g/a;->b:Z

    return-void
.end method

.method public d()Lcom/instabug/survey/OnShowCallback;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/instabug/survey/g/a;->c:Lcom/instabug/survey/OnShowCallback;

    return-object v0
.end method

.method public d(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/instabug/survey/g/a;->a:Z

    return-void
.end method

.method public e()Lcom/instabug/survey/a;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/g/a;->g:Lcom/instabug/survey/a;

    return-object v0
.end method

.method public f()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/g/a;->h:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/instabug/survey/g/a;->e:Z

    return v0
.end method

.method public g()Ljava/lang/Boolean;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/g/a;->h:Ljava/lang/Boolean;

    return-object v0
.end method

.method public h()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/instabug/survey/g/a;->i:Z

    return v0
.end method

.method public i()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/instabug/survey/g/a;->a:Z

    return v0
.end method

.method public j()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/instabug/survey/g/a;->b:Z

    return v0
.end method
