.class Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$5;
.super Ljava/lang/Object;
.source "UserCloudManager.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager;->sendDeviceConnectionEvent(Lbike/smarthalo/app/api/requests/SHDeviceConnectionEvent;Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$GenericCloudCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager;

.field final synthetic val$callback:Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$GenericCloudCallback;


# direct methods
.method constructor <init>(Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager;Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$GenericCloudCallback;)V
    .locals 0

    .line 369
    iput-object p1, p0, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$5;->this$0:Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager;

    iput-object p2, p0, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$5;->val$callback:Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$GenericCloudCallback;

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
            "Ljava/lang/Void;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 381
    iget-object p1, p0, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$5;->val$callback:Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$GenericCloudCallback;

    sget-object p2, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$CloudResult;->NoNetwork:Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$CloudResult;

    invoke-interface {p1, p2}, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$GenericCloudCallback;->onResult(Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$CloudResult;)V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Ljava/lang/Void;",
            ">;",
            "Lretrofit2/Response<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 372
    invoke-virtual {p2}, Lretrofit2/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 373
    iget-object p1, p0, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$5;->val$callback:Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$GenericCloudCallback;

    sget-object p2, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$CloudResult;->Success:Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$CloudResult;

    invoke-interface {p1, p2}, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$GenericCloudCallback;->onResult(Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$CloudResult;)V

    goto :goto_0

    .line 375
    :cond_0
    iget-object p1, p0, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$5;->val$callback:Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$GenericCloudCallback;

    sget-object p2, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$CloudResult;->Failure:Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$CloudResult;

    invoke-interface {p1, p2}, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$GenericCloudCallback;->onResult(Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$CloudResult;)V

    :goto_0
    return-void
.end method
