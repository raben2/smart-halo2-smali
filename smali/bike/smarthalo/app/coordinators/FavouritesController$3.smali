.class Lbike/smarthalo/app/coordinators/FavouritesController$3;
.super Ljava/lang/Object;
.source "FavouritesController.java"

# interfaces
.implements Lbike/smarthalo/app/helpers/SHDialogHelper$SHDialogOnClick;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbike/smarthalo/app/coordinators/FavouritesController;->confirmFavouriteCreate(Lbike/smarthalo/app/models/FavouriteType;Lbike/smarthalo/app/models/SHLocation;Lbike/smarthalo/app/models/UserFavourite;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbike/smarthalo/app/coordinators/FavouritesController;

.field final synthetic val$favouriteLocation:Lbike/smarthalo/app/models/SHLocation;

.field final synthetic val$newfavouriteType:Lbike/smarthalo/app/models/FavouriteType;

.field final synthetic val$previousfavourite:Lbike/smarthalo/app/models/UserFavourite;


# direct methods
.method constructor <init>(Lbike/smarthalo/app/coordinators/FavouritesController;Lbike/smarthalo/app/models/FavouriteType;Lbike/smarthalo/app/models/SHLocation;Lbike/smarthalo/app/models/UserFavourite;)V
    .locals 0

    .line 261
    iput-object p1, p0, Lbike/smarthalo/app/coordinators/FavouritesController$3;->this$0:Lbike/smarthalo/app/coordinators/FavouritesController;

    iput-object p2, p0, Lbike/smarthalo/app/coordinators/FavouritesController$3;->val$newfavouriteType:Lbike/smarthalo/app/models/FavouriteType;

    iput-object p3, p0, Lbike/smarthalo/app/coordinators/FavouritesController$3;->val$favouriteLocation:Lbike/smarthalo/app/models/SHLocation;

    iput-object p4, p0, Lbike/smarthalo/app/coordinators/FavouritesController$3;->val$previousfavourite:Lbike/smarthalo/app/models/UserFavourite;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 4

    .line 264
    iget-object v0, p0, Lbike/smarthalo/app/coordinators/FavouritesController$3;->this$0:Lbike/smarthalo/app/coordinators/FavouritesController;

    iget-object v1, p0, Lbike/smarthalo/app/coordinators/FavouritesController$3;->val$newfavouriteType:Lbike/smarthalo/app/models/FavouriteType;

    iget-object v2, p0, Lbike/smarthalo/app/coordinators/FavouritesController$3;->val$favouriteLocation:Lbike/smarthalo/app/models/SHLocation;

    iget-object v3, p0, Lbike/smarthalo/app/coordinators/FavouritesController$3;->val$previousfavourite:Lbike/smarthalo/app/models/UserFavourite;

    invoke-virtual {v3}, Lbike/smarthalo/app/models/UserFavourite;->realmGet$id()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lbike/smarthalo/app/coordinators/FavouritesController;->createNewFavourite(Lbike/smarthalo/app/models/FavouriteType;Lbike/smarthalo/app/models/SHLocation;Ljava/lang/Integer;)V

    return-void
.end method
