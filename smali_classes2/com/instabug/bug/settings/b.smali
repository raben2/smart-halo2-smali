.class public Lcom/instabug/bug/settings/b;
.super Ljava/lang/Object;
.source "PerSessionSettings.java"


# static fields
.field private static m:Lcom/instabug/bug/settings/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private a:Lcom/instabug/bug/settings/AttachmentsTypesParams;

.field private b:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/instabug/bug/model/ReportCategory;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z

.field private d:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/instabug/bug/model/b;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/instabug/bug/h/a$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private g:Z

.field private h:Lcom/instabug/library/OnSdkDismissCallback;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Lcom/instabug/bug/settings/d;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/instabug/bug/settings/b;->c:Z

    .line 10
    iput-boolean v0, p0, Lcom/instabug/bug/settings/b;->g:Z

    .line 13
    sget-object v0, Lcom/instabug/library/Feature$State;->ENABLED:Lcom/instabug/library/Feature$State;

    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcom/instabug/bug/settings/b;->i:Z

    .line 15
    iput-boolean v0, p0, Lcom/instabug/bug/settings/b;->j:Z

    .line 16
    iput-boolean v0, p0, Lcom/instabug/bug/settings/b;->k:Z

    .line 20
    new-instance v0, Lcom/instabug/bug/settings/AttachmentsTypesParams;

    invoke-direct {v0}, Lcom/instabug/bug/settings/AttachmentsTypesParams;-><init>()V

    iput-object v0, p0, Lcom/instabug/bug/settings/b;->a:Lcom/instabug/bug/settings/AttachmentsTypesParams;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/instabug/bug/settings/b;->e:Ljava/util/List;

    .line 22
    invoke-static {}, Lcom/instabug/bug/settings/d;->a()Lcom/instabug/bug/settings/d;

    move-result-object v0

    iput-object v0, p0, Lcom/instabug/bug/settings/b;->l:Lcom/instabug/bug/settings/d;

    return-void
.end method

.method public static declared-synchronized l()Lcom/instabug/bug/settings/b;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ERADICATE_RETURN_NOT_NULLABLE"
        }
    .end annotation

    const-class v0, Lcom/instabug/bug/settings/b;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/instabug/bug/settings/b;->m:Lcom/instabug/bug/settings/b;

    if-nez v1, :cond_0

    .line 2
    invoke-static {}, Lcom/instabug/bug/settings/b;->m()V

    .line 4
    :cond_0
    sget-object v1, Lcom/instabug/bug/settings/b;->m:Lcom/instabug/bug/settings/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static m()V
    .locals 1

    .line 1
    new-instance v0, Lcom/instabug/bug/settings/b;

    invoke-direct {v0}, Lcom/instabug/bug/settings/b;-><init>()V

    sput-object v0, Lcom/instabug/bug/settings/b;->m:Lcom/instabug/bug/settings/b;

    return-void
.end method


# virtual methods
.method public a()Lcom/instabug/bug/settings/AttachmentsTypesParams;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/bug/settings/b;->a:Lcom/instabug/bug/settings/AttachmentsTypesParams;

    return-object v0
.end method

.method public a(Lcom/instabug/bug/settings/AttachmentsTypesParams;)Lcom/instabug/bug/settings/b;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/instabug/bug/settings/b;->a:Lcom/instabug/bug/settings/AttachmentsTypesParams;

    return-object p0
.end method

.method a(Lcom/instabug/bug/h/a$a;)V
    .locals 0
    .param p1    # Lcom/instabug/bug/h/a$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 5
    iput-object p1, p0, Lcom/instabug/bug/settings/b;->f:Lcom/instabug/bug/h/a$a;

    return-void
.end method

.method public a(Lcom/instabug/library/OnSdkDismissCallback;)V
    .locals 0
    .param p1    # Lcom/instabug/library/OnSdkDismissCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    iput-object p1, p0, Lcom/instabug/bug/settings/b;->h:Lcom/instabug/library/OnSdkDismissCallback;

    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/instabug/bug/settings/b;->l:Lcom/instabug/bug/settings/d;

    invoke-virtual {v0, p1, p2}, Lcom/instabug/bug/settings/d;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/instabug/bug/settings/b;->c:Z

    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/instabug/bug/settings/b;->l:Lcom/instabug/bug/settings/d;

    invoke-virtual {v0, p1}, Lcom/instabug/bug/settings/d;->a(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public b()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/instabug/bug/settings/b;->d:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/instabug/bug/settings/b;->d:Ljava/lang/String;

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/instabug/bug/settings/b;->j:Z

    return-void
.end method

.method c()Lcom/instabug/bug/h/a$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/bug/settings/b;->f:Lcom/instabug/bug/h/a$a;

    if-nez v0, :cond_0

    sget-object v0, Lcom/instabug/bug/h/a$a;->DISABLED:Lcom/instabug/bug/h/a$a;

    :cond_0
    return-object v0
.end method

.method public c(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/instabug/bug/settings/b;->i:Z

    return-void
.end method

.method public d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/instabug/bug/model/b;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/bug/settings/b;->e:Ljava/util/List;

    return-object v0
.end method

.method d(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/instabug/bug/settings/b;->g:Z

    return-void
.end method

.method public e()Lcom/instabug/library/OnSdkDismissCallback;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/bug/settings/b;->h:Lcom/instabug/library/OnSdkDismissCallback;

    return-object v0
.end method

.method public e(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/instabug/bug/settings/b;->k:Z

    return-void
.end method

.method public f()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/instabug/bug/model/ReportCategory;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/bug/settings/b;->b:Ljava/util/List;

    return-object v0
.end method

.method public g()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/instabug/bug/settings/b;->c:Z

    return v0
.end method

.method public h()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/instabug/bug/settings/b;->j:Z

    return v0
.end method

.method public i()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/instabug/bug/settings/b;->i:Z

    return v0
.end method

.method j()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/instabug/bug/settings/b;->g:Z

    return v0
.end method

.method public k()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/instabug/bug/settings/b;->k:Z

    return v0
.end method
