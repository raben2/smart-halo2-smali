.class final Lcom/instabug/library/model/session/config/SessionsConfigMapper$c;
.super Ljava/lang/Object;
.source "SessionsConfigMapper.java"

# interfaces
.implements Lcom/instabug/library/internal/utils/stability/execution/ReturnableExecutable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/library/model/session/config/SessionsConfigMapper;->map(Lcom/instabug/library/model/session/config/SessionsConfig;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/instabug/library/internal/utils/stability/execution/ReturnableExecutable<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/library/model/session/config/SessionsConfig;


# direct methods
.method constructor <init>(Lcom/instabug/library/model/session/config/SessionsConfig;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/model/session/config/SessionsConfigMapper$c;->a:Lcom/instabug/library/model/session/config/SessionsConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic execute()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/instabug/library/model/session/config/SessionsConfigMapper$c;->execute()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public execute()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/instabug/library/model/session/config/SessionsConfigMapper$c;->a:Lcom/instabug/library/model/session/config/SessionsConfig;

    invoke-virtual {v0}, Lcom/instabug/library/model/session/config/SessionsConfig;->getSyncIntervalsInMinutes()I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/instabug/library/model/session/config/SessionsConfigMapper$c;->a:Lcom/instabug/library/model/session/config/SessionsConfig;

    invoke-virtual {v1}, Lcom/instabug/library/model/session/config/SessionsConfig;->getMaxSessionsPerRequest()I

    move-result v1

    .line 4
    iget-object v2, p0, Lcom/instabug/library/model/session/config/SessionsConfigMapper$c;->a:Lcom/instabug/library/model/session/config/SessionsConfig;

    invoke-virtual {v2}, Lcom/instabug/library/model/session/config/SessionsConfig;->getSyncMode()I

    move-result v2

    .line 6
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "interval"

    .line 7
    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "max_number"

    .line 8
    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "mode"

    .line 9
    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 10
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
