.class Lbike/smarthalo/app/coordinators/FavouritesController$1;
.super Lbike/smarthalo/app/api/RequestCallback;
.source "FavouritesController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbike/smarthalo/app/coordinators/FavouritesController;->getUserFavorites()V
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

    .line 60
    iput-object p1, p0, Lbike/smarthalo/app/coordinators/FavouritesController$1;->this$0:Lbike/smarthalo/app/coordinators/FavouritesController;

    invoke-direct {p0}, Lbike/smarthalo/app/api/RequestCallback;-><init>()V

    return-void
.end method


# virtual methods
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

    .line 63
    iget-object v0, p0, Lbike/smarthalo/app/coordinators/FavouritesController$1;->this$0:Lbike/smarthalo/app/coordinators/FavouritesController;

    invoke-static {v0}, Lbike/smarthalo/app/coordinators/FavouritesController;->access$000(Lbike/smarthalo/app/coordinators/FavouritesController;)Lio/reactivex/subjects/ReplaySubject;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/reactivex/subjects/ReplaySubject;->onNext(Ljava/lang/Object;)V

    .line 64
    iget-object v0, p0, Lbike/smarthalo/app/coordinators/FavouritesController$1;->this$0:Lbike/smarthalo/app/coordinators/FavouritesController;

    invoke-static {v0, p1}, Lbike/smarthalo/app/coordinators/FavouritesController;->access$102(Lbike/smarthalo/app/coordinators/FavouritesController;Ljava/util/List;)Ljava/util/List;

    return-void
.end method
