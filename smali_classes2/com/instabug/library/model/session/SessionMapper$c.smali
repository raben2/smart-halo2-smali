.class final Lcom/instabug/library/model/session/SessionMapper$c;
.super Ljava/lang/Object;
.source "SessionMapper.java"

# interfaces
.implements Lcom/instabug/library/internal/utils/stability/execution/ReturnableExecutable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/library/model/session/SessionMapper;->toRequest(Lorg/json/JSONObject;)Lcom/instabug/library/network/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/instabug/library/internal/utils/stability/execution/ReturnableExecutable<",
        "Lcom/instabug/library/network/Request;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lorg/json/JSONObject;

.field final synthetic b:Lcom/instabug/library/network/Request;


# direct methods
.method constructor <init>(Lorg/json/JSONObject;Lcom/instabug/library/network/Request;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/model/session/SessionMapper$c;->a:Lorg/json/JSONObject;

    iput-object p2, p0, Lcom/instabug/library/model/session/SessionMapper$c;->b:Lcom/instabug/library/network/Request;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()Lcom/instabug/library/network/Request;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/instabug/library/model/session/SessionMapper$c;->a:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 5
    iget-object v2, p0, Lcom/instabug/library/model/session/SessionMapper$c;->b:Lcom/instabug/library/network/Request;

    iget-object v3, p0, Lcom/instabug/library/model/session/SessionMapper$c;->a:Lorg/json/JSONObject;

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/instabug/library/network/Request;->addRequestBodyParameter(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/instabug/library/model/session/SessionMapper$c;->b:Lcom/instabug/library/network/Request;

    return-object v0
.end method

.method public bridge synthetic execute()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/instabug/library/model/session/SessionMapper$c;->execute()Lcom/instabug/library/network/Request;

    move-result-object v0

    return-object v0
.end method
