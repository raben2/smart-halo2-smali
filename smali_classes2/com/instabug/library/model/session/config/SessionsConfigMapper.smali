.class public Lcom/instabug/library/model/session/config/SessionsConfigMapper;
.super Ljava/lang/Object;
.source "SessionsConfigMapper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SessionsConfigMapper"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static map(Ljava/lang/String;)Lcom/instabug/library/model/session/config/SessionsConfig;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/instabug/library/internal/utils/stability/handler/exception/ExceptionHandler;

    invoke-direct {v0}, Lcom/instabug/library/internal/utils/stability/handler/exception/ExceptionHandler;-><init>()V

    const-string v1, "SessionsConfigMapper"

    .line 2
    invoke-virtual {v0, v1}, Lcom/instabug/library/internal/utils/stability/handler/exception/ExceptionHandler;->withPenaltyLog(Ljava/lang/String;)Lcom/instabug/library/internal/utils/stability/handler/exception/ExceptionHandler;

    move-result-object v0

    new-instance v1, Lcom/instabug/library/model/session/config/SessionsConfigMapper$a;

    invoke-direct {v1, p0}, Lcom/instabug/library/model/session/config/SessionsConfigMapper$a;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-static {}, Lcom/instabug/library/model/session/config/SessionsConfig;->createDefault()Lcom/instabug/library/model/session/config/SessionsConfig;

    move-result-object p0

    .line 9
    invoke-virtual {v0, v1, p0}, Lcom/instabug/library/internal/utils/stability/handler/exception/ExceptionHandler;->executeAndGet(Lcom/instabug/library/internal/utils/stability/execution/ReturnableExecutable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/instabug/library/model/session/config/SessionsConfig;

    return-object p0
.end method

.method public static map(Lorg/json/JSONObject;)Lcom/instabug/library/model/session/config/SessionsConfig;
    .locals 2
    .param p0    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 10
    new-instance v0, Lcom/instabug/library/internal/utils/stability/handler/exception/ExceptionHandler;

    invoke-direct {v0}, Lcom/instabug/library/internal/utils/stability/handler/exception/ExceptionHandler;-><init>()V

    const-string v1, "SessionsConfigMapper"

    .line 11
    invoke-virtual {v0, v1}, Lcom/instabug/library/internal/utils/stability/handler/exception/ExceptionHandler;->withPenaltyLog(Ljava/lang/String;)Lcom/instabug/library/internal/utils/stability/handler/exception/ExceptionHandler;

    move-result-object v0

    new-instance v1, Lcom/instabug/library/model/session/config/SessionsConfigMapper$b;

    invoke-direct {v1, p0}, Lcom/instabug/library/model/session/config/SessionsConfigMapper$b;-><init>(Lorg/json/JSONObject;)V

    .line 24
    invoke-static {}, Lcom/instabug/library/model/session/config/SessionsConfig;->createDefault()Lcom/instabug/library/model/session/config/SessionsConfig;

    move-result-object p0

    .line 25
    invoke-virtual {v0, v1, p0}, Lcom/instabug/library/internal/utils/stability/handler/exception/ExceptionHandler;->executeAndGet(Lcom/instabug/library/internal/utils/stability/execution/ReturnableExecutable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/instabug/library/model/session/config/SessionsConfig;

    return-object p0
.end method

.method public static map(Lcom/instabug/library/model/session/config/SessionsConfig;)Ljava/lang/String;
    .locals 2
    .param p0    # Lcom/instabug/library/model/session/config/SessionsConfig;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 26
    new-instance v0, Lcom/instabug/library/internal/utils/stability/handler/exception/ExceptionHandler;

    invoke-direct {v0}, Lcom/instabug/library/internal/utils/stability/handler/exception/ExceptionHandler;-><init>()V

    const-string v1, "SessionsConfigMapper"

    .line 27
    invoke-virtual {v0, v1}, Lcom/instabug/library/internal/utils/stability/handler/exception/ExceptionHandler;->withPenaltyLog(Ljava/lang/String;)Lcom/instabug/library/internal/utils/stability/handler/exception/ExceptionHandler;

    move-result-object v0

    new-instance v1, Lcom/instabug/library/model/session/config/SessionsConfigMapper$c;

    invoke-direct {v1, p0}, Lcom/instabug/library/model/session/config/SessionsConfigMapper$c;-><init>(Lcom/instabug/library/model/session/config/SessionsConfig;)V

    const-string p0, "{}"

    .line 28
    invoke-virtual {v0, v1, p0}, Lcom/instabug/library/internal/utils/stability/handler/exception/ExceptionHandler;->executeAndGet(Lcom/instabug/library/internal/utils/stability/execution/ReturnableExecutable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method
