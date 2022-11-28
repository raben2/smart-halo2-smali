.class Lcom/instabug/library/h$b;
.super Ljava/lang/Object;
.source "SessionManager.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/library/h;->a(Lcom/instabug/library/model/common/Session;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Lcom/instabug/library/model/session/SessionLocalEntity;",
        "Lio/reactivex/Completable;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/instabug/library/h;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/instabug/library/model/session/SessionLocalEntity;)Lio/reactivex/Completable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/instabug/library/m/c;

    invoke-direct {v0}, Lcom/instabug/library/m/c;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Lcom/instabug/library/m/c;->a(Lcom/instabug/library/model/session/SessionLocalEntity;)Lio/reactivex/Completable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/instabug/library/model/session/SessionLocalEntity;

    invoke-virtual {p0, p1}, Lcom/instabug/library/h$b;->a(Lcom/instabug/library/model/session/SessionLocalEntity;)Lio/reactivex/Completable;

    move-result-object p1

    return-object p1
.end method
