.class Lbike/smarthalo/app/coordinators/FavouritesController$2;
.super Lbike/smarthalo/app/api/RequestCallback;
.source "FavouritesController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbike/smarthalo/app/coordinators/FavouritesController;->updateUserFavourites(Lbike/smarthalo/app/models/FavouritesChangedEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbike/smarthalo/app/coordinators/FavouritesController;


# direct methods
.method constructor <init>(Lbike/smarthalo/app/coordinators/FavouritesController;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lbike/smarthalo/app/coordinators/FavouritesController$2;->this$0:Lbike/smarthalo/app/coordinators/FavouritesController;

    invoke-direct {p0}, Lbike/smarthalo/app/api/RequestCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure()V
    .locals 1

    .line 93
    iget-object v0, p0, Lbike/smarthalo/app/coordinators/FavouritesController$2;->this$0:Lbike/smarthalo/app/coordinators/FavouritesController;

    invoke-static {v0}, Lbike/smarthalo/app/coordinators/FavouritesController;->access$200(Lbike/smarthalo/app/coordinators/FavouritesController;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lbike/smarthalo/app/helpers/SHDialogHelper;->showNoDataToast(Landroid/content/Context;)V

    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/UserFavourite;",
            ">;)V"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lbike/smarthalo/app/coordinators/FavouritesController$2;->this$0:Lbike/smarthalo/app/coordinators/FavouritesController;

    invoke-static {v0, p1}, Lbike/smarthalo/app/coordinators/FavouritesController;->access$102(Lbike/smarthalo/app/coordinators/FavouritesController;Ljava/util/List;)Ljava/util/List;

    .line 88
    iget-object v0, p0, Lbike/smarthalo/app/coordinators/FavouritesController$2;->this$0:Lbike/smarthalo/app/coordinators/FavouritesController;

    invoke-static {v0}, Lbike/smarthalo/app/coordinators/FavouritesController;->access$000(Lbike/smarthalo/app/coordinators/FavouritesController;)Lio/reactivex/subjects/ReplaySubject;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/reactivex/subjects/ReplaySubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method
