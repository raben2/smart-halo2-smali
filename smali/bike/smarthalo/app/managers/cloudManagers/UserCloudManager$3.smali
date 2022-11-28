.class Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$3;
.super Ljava/lang/Object;
.source "UserCloudManager.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager;->getFavouriteChangeCallback(Lbike/smarthalo/app/api/RequestCallback;Ljava/lang/Integer;)Lretrofit2/Callback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager;

.field final synthetic val$cb:Lbike/smarthalo/app/api/RequestCallback;

.field final synthetic val$userId:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager;Ljava/lang/Integer;Lbike/smarthalo/app/api/RequestCallback;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$3;->this$0:Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager;

    iput-object p2, p0, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$3;->val$userId:Ljava/lang/Integer;

    iput-object p3, p0, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$3;->val$cb:Lbike/smarthalo/app/api/RequestCallback;

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
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 228
    iget-object p1, p0, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$3;->val$cb:Lbike/smarthalo/app/api/RequestCallback;

    invoke-virtual {p1}, Lbike/smarthalo/app/api/RequestCallback;->onFailure()V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lretrofit2/Response<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 219
    invoke-virtual {p2}, Lretrofit2/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 220
    iget-object p1, p0, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$3;->this$0:Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager;

    iget-object p2, p0, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$3;->val$userId:Ljava/lang/Integer;

    iget-object v0, p0, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$3;->val$cb:Lbike/smarthalo/app/api/RequestCallback;

    invoke-virtual {p1, p2, v0}, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager;->getUserFavorites(Ljava/lang/Integer;Lbike/smarthalo/app/api/RequestCallback;)V

    goto :goto_0

    .line 222
    :cond_0
    iget-object p1, p0, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$3;->val$cb:Lbike/smarthalo/app/api/RequestCallback;

    invoke-virtual {p1}, Lbike/smarthalo/app/api/RequestCallback;->onFailure()V

    :goto_0
    return-void
.end method
