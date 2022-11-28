.class public Lbike/smarthalo/app/models/FavouritesChangedEvent;
.super Ljava/lang/Object;
.source "FavouritesChangedEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbike/smarthalo/app/models/FavouritesChangedEvent$FavouriteChangeType;
    }
.end annotation


# instance fields
.field public changeType:Lbike/smarthalo/app/models/FavouritesChangedEvent$FavouriteChangeType;

.field public changedFavourite:Lbike/smarthalo/app/models/UserFavourite;

.field public previousFavouriteToRemove:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Lbike/smarthalo/app/models/UserFavourite;Lbike/smarthalo/app/models/FavouritesChangedEvent$FavouriteChangeType;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lbike/smarthalo/app/models/FavouritesChangedEvent;->changedFavourite:Lbike/smarthalo/app/models/UserFavourite;

    .line 20
    iput-object p2, p0, Lbike/smarthalo/app/models/FavouritesChangedEvent;->changeType:Lbike/smarthalo/app/models/FavouritesChangedEvent$FavouriteChangeType;

    return-void
.end method

.method public constructor <init>(Lbike/smarthalo/app/models/UserFavourite;Lbike/smarthalo/app/models/FavouritesChangedEvent$FavouriteChangeType;Ljava/lang/Integer;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lbike/smarthalo/app/models/FavouritesChangedEvent;->changedFavourite:Lbike/smarthalo/app/models/UserFavourite;

    .line 25
    iput-object p2, p0, Lbike/smarthalo/app/models/FavouritesChangedEvent;->changeType:Lbike/smarthalo/app/models/FavouritesChangedEvent$FavouriteChangeType;

    .line 26
    iput-object p3, p0, Lbike/smarthalo/app/models/FavouritesChangedEvent;->previousFavouriteToRemove:Ljava/lang/Integer;

    return-void
.end method
