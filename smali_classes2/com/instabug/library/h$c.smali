.class Lcom/instabug/library/h$c;
.super Ljava/lang/Object;
.source "SessionManager.java"

# interfaces
.implements Lio/reactivex/SingleOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/library/h;->b(Lcom/instabug/library/model/common/Session;)Lio/reactivex/Single;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/SingleOnSubscribe<",
        "Lcom/instabug/library/model/session/SessionLocalEntity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/library/model/common/Session;


# direct methods
.method constructor <init>(Lcom/instabug/library/h;Lcom/instabug/library/model/common/Session;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/instabug/library/h$c;->a:Lcom/instabug/library/model/common/Session;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public subscribe(Lio/reactivex/SingleEmitter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleEmitter<",
            "Lcom/instabug/library/model/session/SessionLocalEntity;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/instabug/library/Instabug;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/instabug/library/core/InstabugCore;->isUsersPageEnabled()Z

    move-result v1

    .line 3
    new-instance v2, Lcom/instabug/library/model/session/SessionLocalEntity$Factory;

    invoke-direct {v2}, Lcom/instabug/library/model/session/SessionLocalEntity$Factory;-><init>()V

    iget-object v3, p0, Lcom/instabug/library/h$c;->a:Lcom/instabug/library/model/common/Session;

    .line 5
    invoke-virtual {v2, v0, v3, v1}, Lcom/instabug/library/model/session/SessionLocalEntity$Factory;->create(Landroid/content/Context;Lcom/instabug/library/model/common/Session;Z)Lcom/instabug/library/model/session/SessionLocalEntity;

    move-result-object v0

    .line 6
    invoke-interface {p1, v0}, Lio/reactivex/SingleEmitter;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
