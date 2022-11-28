.class public Lcom/instabug/chat/settings/b;
.super Ljava/lang/Object;
.source "PerSessionSettings.java"


# static fields
.field private static f:Lcom/instabug/chat/settings/b;


# instance fields
.field private a:Lcom/instabug/chat/settings/AttachmentTypesState;

.field private b:Ljava/lang/Runnable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private c:Z

.field private d:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private e:Lcom/instabug/library/OnSdkDismissCallback;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/instabug/chat/settings/b;->c:Z

    .line 7
    sget-object v0, Lcom/instabug/library/Feature$State;->ENABLED:Lcom/instabug/library/Feature$State;

    .line 11
    new-instance v0, Lcom/instabug/chat/settings/AttachmentTypesState;

    invoke-direct {v0}, Lcom/instabug/chat/settings/AttachmentTypesState;-><init>()V

    iput-object v0, p0, Lcom/instabug/chat/settings/b;->a:Lcom/instabug/chat/settings/AttachmentTypesState;

    return-void
.end method

.method static declared-synchronized f()Lcom/instabug/chat/settings/b;
    .locals 2

    const-class v0, Lcom/instabug/chat/settings/b;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/instabug/chat/settings/b;->f:Lcom/instabug/chat/settings/b;

    if-nez v1, :cond_0

    .line 2
    invoke-static {}, Lcom/instabug/chat/settings/b;->g()V

    .line 3
    :cond_0
    sget-object v1, Lcom/instabug/chat/settings/b;->f:Lcom/instabug/chat/settings/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static g()V
    .locals 1

    .line 1
    new-instance v0, Lcom/instabug/chat/settings/b;

    invoke-direct {v0}, Lcom/instabug/chat/settings/b;-><init>()V

    sput-object v0, Lcom/instabug/chat/settings/b;->f:Lcom/instabug/chat/settings/b;

    return-void
.end method

.method public static declared-synchronized h()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ERADICATE_FIELD_NOT_NULLABLE"
        }
    .end annotation

    const-class v0, Lcom/instabug/chat/settings/b;

    monitor-enter v0

    const/4 v1, 0x0

    .line 1
    :try_start_0
    sput-object v1, Lcom/instabug/chat/settings/b;->f:Lcom/instabug/chat/settings/b;
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
.method a()Lcom/instabug/chat/settings/AttachmentTypesState;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/instabug/chat/settings/b;->a:Lcom/instabug/chat/settings/AttachmentTypesState;

    return-object v0
.end method

.method a(Lcom/instabug/chat/settings/AttachmentTypesState;)Lcom/instabug/chat/settings/b;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/instabug/chat/settings/b;->a:Lcom/instabug/chat/settings/AttachmentTypesState;

    return-object p0
.end method

.method public a(Lcom/instabug/library/OnSdkDismissCallback;)V
    .locals 0
    .param p1    # Lcom/instabug/library/OnSdkDismissCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 6
    iput-object p1, p0, Lcom/instabug/chat/settings/b;->e:Lcom/instabug/library/OnSdkDismissCallback;

    return-void
.end method

.method a(Ljava/lang/Runnable;)V
    .locals 0
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/instabug/chat/settings/b;->b:Ljava/lang/Runnable;

    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 5
    iput-object p1, p0, Lcom/instabug/chat/settings/b;->d:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/instabug/chat/settings/b;->c:Z

    return-void
.end method

.method b()Ljava/lang/Runnable;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/chat/settings/b;->b:Ljava/lang/Runnable;

    return-object v0
.end method

.method public c()Lcom/instabug/library/OnSdkDismissCallback;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/chat/settings/b;->e:Lcom/instabug/library/OnSdkDismissCallback;

    return-object v0
.end method

.method d()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/chat/settings/b;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/instabug/chat/settings/b;->c:Z

    return v0
.end method
