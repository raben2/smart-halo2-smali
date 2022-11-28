.class public final enum Lbike/smarthalo/app/models/FavouritesChangedEvent$FavouriteChangeType;
.super Ljava/lang/Enum;
.source "FavouritesChangedEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbike/smarthalo/app/models/FavouritesChangedEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FavouriteChangeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lbike/smarthalo/app/models/FavouritesChangedEvent$FavouriteChangeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lbike/smarthalo/app/models/FavouritesChangedEvent$FavouriteChangeType;

.field public static final enum added:Lbike/smarthalo/app/models/FavouritesChangedEvent$FavouriteChangeType;

.field public static final enum addedShouldRemovePrevious:Lbike/smarthalo/app/models/FavouritesChangedEvent$FavouriteChangeType;

.field public static final enum deleted:Lbike/smarthalo/app/models/FavouritesChangedEvent$FavouriteChangeType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 13
    new-instance v0, Lbike/smarthalo/app/models/FavouritesChangedEvent$FavouriteChangeType;

    const-string v1, "added"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lbike/smarthalo/app/models/FavouritesChangedEvent$FavouriteChangeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/app/models/FavouritesChangedEvent$FavouriteChangeType;->added:Lbike/smarthalo/app/models/FavouritesChangedEvent$FavouriteChangeType;

    .line 14
    new-instance v0, Lbike/smarthalo/app/models/FavouritesChangedEvent$FavouriteChangeType;

    const-string v1, "addedShouldRemovePrevious"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lbike/smarthalo/app/models/FavouritesChangedEvent$FavouriteChangeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/app/models/FavouritesChangedEvent$FavouriteChangeType;->addedShouldRemovePrevious:Lbike/smarthalo/app/models/FavouritesChangedEvent$FavouriteChangeType;

    .line 15
    new-instance v0, Lbike/smarthalo/app/models/FavouritesChangedEvent$FavouriteChangeType;

    const-string v1, "deleted"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lbike/smarthalo/app/models/FavouritesChangedEvent$FavouriteChangeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/app/models/FavouritesChangedEvent$FavouriteChangeType;->deleted:Lbike/smarthalo/app/models/FavouritesChangedEvent$FavouriteChangeType;

    const/4 v0, 0x3

    .line 12
    new-array v0, v0, [Lbike/smarthalo/app/models/FavouritesChangedEvent$FavouriteChangeType;

    sget-object v1, Lbike/smarthalo/app/models/FavouritesChangedEvent$FavouriteChangeType;->added:Lbike/smarthalo/app/models/FavouritesChangedEvent$FavouriteChangeType;

    aput-object v1, v0, v2

    sget-object v1, Lbike/smarthalo/app/models/FavouritesChangedEvent$FavouriteChangeType;->addedShouldRemovePrevious:Lbike/smarthalo/app/models/FavouritesChangedEvent$FavouriteChangeType;

    aput-object v1, v0, v3

    sget-object v1, Lbike/smarthalo/app/models/FavouritesChangedEvent$FavouriteChangeType;->deleted:Lbike/smarthalo/app/models/FavouritesChangedEvent$FavouriteChangeType;

    aput-object v1, v0, v4

    sput-object v0, Lbike/smarthalo/app/models/FavouritesChangedEvent$FavouriteChangeType;->$VALUES:[Lbike/smarthalo/app/models/FavouritesChangedEvent$FavouriteChangeType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbike/smarthalo/app/models/FavouritesChangedEvent$FavouriteChangeType;
    .locals 1

    .line 12
    const-class v0, Lbike/smarthalo/app/models/FavouritesChangedEvent$FavouriteChangeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lbike/smarthalo/app/models/FavouritesChangedEvent$FavouriteChangeType;

    return-object p0
.end method

.method public static values()[Lbike/smarthalo/app/models/FavouritesChangedEvent$FavouriteChangeType;
    .locals 1

    .line 12
    sget-object v0, Lbike/smarthalo/app/models/FavouritesChangedEvent$FavouriteChangeType;->$VALUES:[Lbike/smarthalo/app/models/FavouritesChangedEvent$FavouriteChangeType;

    invoke-virtual {v0}, [Lbike/smarthalo/app/models/FavouritesChangedEvent$FavouriteChangeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbike/smarthalo/app/models/FavouritesChangedEvent$FavouriteChangeType;

    return-object v0
.end method
