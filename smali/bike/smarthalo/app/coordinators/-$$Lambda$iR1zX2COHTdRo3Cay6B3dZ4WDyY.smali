.class public final synthetic Lbike/smarthalo/app/coordinators/-$$Lambda$iR1zX2COHTdRo3Cay6B3dZ4WDyY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final synthetic f$0:Lbike/smarthalo/app/coordinators/FavouritesController;


# direct methods
.method public synthetic constructor <init>(Lbike/smarthalo/app/coordinators/FavouritesController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/coordinators/-$$Lambda$iR1zX2COHTdRo3Cay6B3dZ4WDyY;->f$0:Lbike/smarthalo/app/coordinators/FavouritesController;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/coordinators/-$$Lambda$iR1zX2COHTdRo3Cay6B3dZ4WDyY;->f$0:Lbike/smarthalo/app/coordinators/FavouritesController;

    check-cast p1, Lbike/smarthalo/app/models/FavouritesChangedEvent;

    invoke-virtual {v0, p1}, Lbike/smarthalo/app/coordinators/FavouritesController;->updateUserFavourites(Lbike/smarthalo/app/models/FavouritesChangedEvent;)V

    return-void
.end method
