.class final Lcom/instabug/library/model/session/config/SessionsConfigMapper$b;
.super Ljava/lang/Object;
.source "SessionsConfigMapper.java"

# interfaces
.implements Lcom/instabug/library/internal/utils/stability/execution/ReturnableExecutable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/library/model/session/config/SessionsConfigMapper;->map(Lorg/json/JSONObject;)Lcom/instabug/library/model/session/config/SessionsConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/instabug/library/internal/utils/stability/execution/ReturnableExecutable<",
        "Lcom/instabug/library/model/session/config/SessionsConfig;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/model/session/config/SessionsConfigMapper$b;->a:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()Lcom/instabug/library/model/session/config/SessionsConfig;
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/instabug/library/model/session/config/SessionsConfigMapper$b;->a:Lorg/json/JSONObject;

    const-string v1, "interval"

    const/16 v2, 0x2d0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/instabug/library/model/session/config/SessionsConfigMapper$b;->a:Lorg/json/JSONObject;

    const-string v2, "max_number"

    const/16 v3, 0xa

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 4
    iget-object v2, p0, Lcom/instabug/library/model/session/config/SessionsConfigMapper$b;->a:Lorg/json/JSONObject;

    const-string v3, "mode"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 5
    new-instance v3, Lcom/instabug/library/model/session/config/SessionsConfig;

    invoke-direct {v3, v0, v1, v2}, Lcom/instabug/library/model/session/config/SessionsConfig;-><init>(III)V

    return-object v3
.end method

.method public bridge synthetic execute()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/instabug/library/model/session/config/SessionsConfigMapper$b;->execute()Lcom/instabug/library/model/session/config/SessionsConfig;

    move-result-object v0

    return-object v0
.end method
