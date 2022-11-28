.class public Lcom/instabug/library/l/c/a;
.super Ljava/lang/Object;
.source "LoggingSettingResolver.java"


# static fields
.field private static c:Lcom/instabug/library/l/c/a; = null

.field private static final d:Ljava/lang/String; = "a"


# instance fields
.field private a:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private volatile b:Lcom/instabug/library/model/e;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-direct {p0}, Lcom/instabug/library/l/c/a;->d()V

    return-void
.end method

.method private a(I)V
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/instabug/library/l/c/a;->a:Landroidx/lifecycle/Observer;

    if-nez v0, :cond_0

    .line 9
    invoke-direct {p0}, Lcom/instabug/library/l/c/a;->d()V

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/instabug/library/l/c/a;->a:Landroidx/lifecycle/Observer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Landroidx/lifecycle/Observer;->onChanged(Ljava/lang/Object;)V

    return-void
.end method

.method private b(Lorg/json/JSONObject;)Lcom/instabug/library/model/e;
    .locals 1
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/instabug/library/model/e;

    invoke-direct {v0}, Lcom/instabug/library/model/e;-><init>()V

    .line 3
    invoke-virtual {v0, p1}, Lcom/instabug/library/model/e;->a(Lorg/json/JSONObject;)V

    return-object v0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/instabug/library/l/c/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static declared-synchronized c()Lcom/instabug/library/l/c/a;
    .locals 2

    const-class v0, Lcom/instabug/library/l/c/a;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/instabug/library/l/c/a;->c:Lcom/instabug/library/l/c/a;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/instabug/library/l/c/a;

    invoke-direct {v1}, Lcom/instabug/library/l/c/a;-><init>()V

    sput-object v1, Lcom/instabug/library/l/c/a;->c:Lcom/instabug/library/l/c/a;

    .line 4
    :cond_0
    sget-object v1, Lcom/instabug/library/l/c/a;->c:Lcom/instabug/library/l/c/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private d()V
    .locals 1

    .line 1
    new-instance v0, Lcom/instabug/library/l/c/a$a;

    invoke-direct {v0, p0}, Lcom/instabug/library/l/c/a$a;-><init>(Lcom/instabug/library/l/c/a;)V

    iput-object v0, p0, Lcom/instabug/library/l/c/a;->a:Landroidx/lifecycle/Observer;

    return-void
.end method


# virtual methods
.method public a()Lcom/instabug/library/model/e;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 12
    :try_start_0
    iget-object v0, p0, Lcom/instabug/library/l/c/a;->b:Lcom/instabug/library/model/e;

    if-nez v0, :cond_0

    .line 13
    invoke-static {}, Lcom/instabug/library/settings/SettingsManager;->getInstance()Lcom/instabug/library/settings/SettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/settings/SettingsManager;->getLoggingFeatureSettings()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 15
    new-instance v1, Lcom/instabug/library/model/e;

    invoke-direct {v1}, Lcom/instabug/library/model/e;-><init>()V

    iput-object v1, p0, Lcom/instabug/library/l/c/a;->b:Lcom/instabug/library/model/e;

    .line 16
    iget-object v1, p0, Lcom/instabug/library/l/c/a;->b:Lcom/instabug/library/model/e;

    invoke-virtual {v1, v0}, Lcom/instabug/library/model/e;->fromJson(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 20
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 22
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/instabug/library/l/c/a;->b:Lcom/instabug/library/model/e;

    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 1
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/l/c/a;->b:Lcom/instabug/library/model/e;

    const/4 p1, 0x0

    .line 2
    invoke-direct {p0, p1}, Lcom/instabug/library/l/c/a;->a(I)V

    return-void

    .line 5
    :cond_0
    invoke-direct {p0, p1}, Lcom/instabug/library/l/c/a;->b(Lorg/json/JSONObject;)Lcom/instabug/library/model/e;

    move-result-object v0

    iput-object v0, p0, Lcom/instabug/library/l/c/a;->b:Lcom/instabug/library/model/e;

    .line 6
    invoke-static {}, Lcom/instabug/library/settings/SettingsManager;->getInstance()Lcom/instabug/library/settings/SettingsManager;

    move-result-object v0

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/instabug/library/settings/SettingsManager;->setLoggingFeatureSettings(Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lcom/instabug/library/l/c/a;->b:Lcom/instabug/library/model/e;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/instabug/library/l/c/a;->b:Lcom/instabug/library/model/e;

    invoke-virtual {p1}, Lcom/instabug/library/model/e;->b()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/instabug/library/l/c/a;->a(I)V

    :cond_1
    return-void
.end method
