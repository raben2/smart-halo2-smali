.class Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$1;
.super Ljava/lang/Object;
.source "UserCloudManager.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager;->resendConfirmation(Ljava/lang/String;Lbike/smarthalo/app/api/RequestCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager;

.field final synthetic val$cb:Lbike/smarthalo/app/api/RequestCallback;


# direct methods
.method constructor <init>(Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager;Lbike/smarthalo/app/api/RequestCallback;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$1;->this$0:Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager;

    iput-object p2, p0, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$1;->val$cb:Lbike/smarthalo/app/api/RequestCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 168
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 169
    iget-object p1, p0, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$1;->val$cb:Lbike/smarthalo/app/api/RequestCallback;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lbike/smarthalo/app/api/RequestCallback;->onFailure(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Ljava/lang/String;",
            ">;",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 159
    invoke-virtual {p2}, Lretrofit2/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 160
    iget-object p1, p0, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$1;->val$cb:Lbike/smarthalo/app/api/RequestCallback;

    const-string p2, "ok"

    invoke-virtual {p1, p2}, Lbike/smarthalo/app/api/RequestCallback;->onSuccess(Ljava/lang/String;)V

    goto :goto_0

    .line 162
    :cond_0
    iget-object p1, p0, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$1;->val$cb:Lbike/smarthalo/app/api/RequestCallback;

    const-string p2, "error"

    invoke-virtual {p1, p2}, Lbike/smarthalo/app/api/RequestCallback;->onFailure(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
