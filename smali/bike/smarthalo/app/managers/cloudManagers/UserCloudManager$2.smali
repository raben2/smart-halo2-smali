.class Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$2;
.super Ljava/lang/Object;
.source "UserCloudManager.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager;->getUserFavorites(Ljava/lang/Integer;Lbike/smarthalo/app/api/RequestCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Ljava/util/List<",
        "Lbike/smarthalo/app/models/UserFavourite;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager;

.field final synthetic val$cb:Lbike/smarthalo/app/api/RequestCallback;


# direct methods
.method constructor <init>(Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager;Lbike/smarthalo/app/api/RequestCallback;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$2;->this$0:Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager;

    iput-object p2, p0, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$2;->val$cb:Lbike/smarthalo/app/api/RequestCallback;

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
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/UserFavourite;",
            ">;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 194
    iget-object p1, p0, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$2;->val$cb:Lbike/smarthalo/app/api/RequestCallback;

    const-string p2, ""

    invoke-virtual {p1, p2}, Lbike/smarthalo/app/api/RequestCallback;->onFailure(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/UserFavourite;",
            ">;>;",
            "Lretrofit2/Response<",
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/UserFavourite;",
            ">;>;)V"
        }
    .end annotation

    .line 184
    invoke-virtual {p2}, Lretrofit2/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 185
    iget-object p1, p0, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$2;->val$cb:Lbike/smarthalo/app/api/RequestCallback;

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {p1, v0}, Lbike/smarthalo/app/api/RequestCallback;->onSuccess(Ljava/util/List;)V

    .line 186
    iget-object p1, p0, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$2;->this$0:Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager;

    invoke-static {p1}, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager;->access$000(Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager;)Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;

    move-result-object p1

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;->updateLocalFavouritesAsync(Ljava/util/List;Lbike/smarthalo/app/managers/storageManagers/AppStorageManager$RealmAsyncTransactionInterface;)V

    goto :goto_0

    .line 188
    :cond_0
    iget-object p1, p0, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$2;->val$cb:Lbike/smarthalo/app/api/RequestCallback;

    const-string p2, ""

    invoke-virtual {p1, p2}, Lbike/smarthalo/app/api/RequestCallback;->onFailure(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
