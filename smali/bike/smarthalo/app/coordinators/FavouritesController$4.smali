.class Lbike/smarthalo/app/coordinators/FavouritesController$4;
.super Ljava/lang/Object;
.source "FavouritesController.java"

# interfaces
.implements Lbike/smarthalo/app/helpers/SHDialogHelper$SHDialogOnClick;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbike/smarthalo/app/coordinators/FavouritesController;->confirmDeleteFavourite(Lbike/smarthalo/app/models/SHLocation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbike/smarthalo/app/coordinators/FavouritesController;

.field final synthetic val$locationToDelete:Lbike/smarthalo/app/models/SHLocation;


# direct methods
.method constructor <init>(Lbike/smarthalo/app/coordinators/FavouritesController;Lbike/smarthalo/app/models/SHLocation;)V
    .locals 0

    .line 276
    iput-object p1, p0, Lbike/smarthalo/app/coordinators/FavouritesController$4;->this$0:Lbike/smarthalo/app/coordinators/FavouritesController;

    iput-object p2, p0, Lbike/smarthalo/app/coordinators/FavouritesController$4;->val$locationToDelete:Lbike/smarthalo/app/models/SHLocation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 2

    .line 279
    iget-object v0, p0, Lbike/smarthalo/app/coordinators/FavouritesController$4;->this$0:Lbike/smarthalo/app/coordinators/FavouritesController;

    iget-object v1, p0, Lbike/smarthalo/app/coordinators/FavouritesController$4;->val$locationToDelete:Lbike/smarthalo/app/models/SHLocation;

    invoke-virtual {v0, v1}, Lbike/smarthalo/app/coordinators/FavouritesController;->deleteFavourite(Lbike/smarthalo/app/models/SHLocation;)V

    return-void
.end method
