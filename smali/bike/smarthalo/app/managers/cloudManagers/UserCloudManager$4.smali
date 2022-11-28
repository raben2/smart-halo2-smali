.class Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$4;
.super Ljava/lang/Object;
.source "UserCloudManager.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager;->getCreateAndDeleteCallback(Ljava/lang/String;Lbike/smarthalo/app/api/RequestCallback;Ljava/lang/Integer;Ljava/lang/Integer;)Lretrofit2/Callback;
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

.field final synthetic val$accessToken:Ljava/lang/String;

.field final synthetic val$cb:Lbike/smarthalo/app/api/RequestCallback;

.field final synthetic val$previousFavouriteToRemove:Ljava/lang/Integer;

.field final synthetic val$userId:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lbike/smarthalo/app/api/RequestCallback;)V
    .locals 0

    .line 234
    iput-object p1, p0, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$4;->this$0:Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager;

    iput-object p2, p0, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$4;->val$accessToken:Ljava/lang/String;

    iput-object p3, p0, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$4;->val$userId:Ljava/lang/Integer;

    iput-object p4, p0, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$4;->val$previousFavouriteToRemove:Ljava/lang/Integer;

    iput-object p5, p0, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$4;->val$cb:Lbike/smarthalo/app/api/RequestCallback;

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

    .line 246
    iget-object p1, p0, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$4;->val$cb:Lbike/smarthalo/app/api/RequestCallback;

    invoke-virtual {p1}, Lbike/smarthalo/app/api/RequestCallback;->onFailure()V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 2
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

    .line 237
    invoke-virtual {p2}, Lretrofit2/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 238
    iget-object p1, p0, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$4;->this$0:Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager;

    iget-object p2, p0, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$4;->val$accessToken:Ljava/lang/String;

    iget-object v0, p0, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$4;->val$userId:Ljava/lang/Integer;

    iget-object v1, p0, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$4;->val$previousFavouriteToRemove:Ljava/lang/Integer;

    invoke-static {p1, p2, v0, v1}, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager;->access$200(Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Lretrofit2/Call;

    move-result-object p1

    iget-object p2, p0, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$4;->this$0:Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager;

    iget-object v0, p0, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$4;->val$cb:Lbike/smarthalo/app/api/RequestCallback;

    iget-object v1, p0, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$4;->val$userId:Ljava/lang/Integer;

    invoke-static {p2, v0, v1}, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager;->access$100(Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager;Lbike/smarthalo/app/api/RequestCallback;Ljava/lang/Integer;)Lretrofit2/Callback;

    move-result-object p2

    invoke-interface {p1, p2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    goto :goto_0

    .line 240
    :cond_0
    iget-object p1, p0, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$4;->val$cb:Lbike/smarthalo/app/api/RequestCallback;

    invoke-virtual {p1}, Lbike/smarthalo/app/api/RequestCallback;->onFailure()V

    :goto_0
    return-void
.end method
