.class public Lbike/smarthalo/app/models/UserFavourite;
.super Lio/realm/RealmObject;
.source "UserFavourite.java"

# interfaces
.implements Lio/realm/bike_smarthalo_app_models_UserFavouriteRealmProxyInterface;


# static fields
.field public static final FAVOURITE_TYPE:Ljava/lang/String; = "FAVOURITE"

.field public static final HOME_TYPE:Ljava/lang/String; = "HOME"

.field public static final WORK_TYPE:Ljava/lang/String; = "WORK"


# instance fields
.field public address:Ljava/lang/String;

.field public createdAt:Ljava/util/Date;

.field public favouriteType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "favourite_type"
    .end annotation
.end field

.field public id:Ljava/lang/Integer;
    .annotation runtime Lio/realm/annotations/PrimaryKey;
    .end annotation
.end field

.field public label:Ljava/lang/String;

.field public latitude:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "lat"
    .end annotation
.end field

.field public longitude:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "lng"
    .end annotation
.end field

.field public updatedAt:Ljava/util/Date;

.field public userId:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "user_id"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Lio/realm/RealmObject;-><init>()V

    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realm$injectObjectContext()V

    :cond_0
    return-void
.end method


# virtual methods
.method public asSHLocation()Lbike/smarthalo/app/models/SHLocation;
    .locals 7

    .line 45
    new-instance v0, Lbike/smarthalo/app/models/SHLocation;

    invoke-direct {v0}, Lbike/smarthalo/app/models/SHLocation;-><init>()V

    .line 47
    invoke-virtual {p0}, Lbike/smarthalo/app/models/UserFavourite;->realmGet$address()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbike/smarthalo/app/models/SHLocation;->realmSet$address(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lbike/smarthalo/app/models/UserFavourite;->realmGet$label()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lbike/smarthalo/app/models/UserFavourite;->realmGet$address()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lbike/smarthalo/app/models/UserFavourite;->realmGet$label()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Lbike/smarthalo/app/models/SHLocation;->realmSet$title(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Lbike/smarthalo/app/models/UserFavourite;->realmGet$latitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbike/smarthalo/app/models/SHLocation;->realmSet$latitude(Ljava/lang/Double;)V

    .line 50
    invoke-virtual {p0}, Lbike/smarthalo/app/models/UserFavourite;->realmGet$longitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbike/smarthalo/app/models/SHLocation;->realmSet$longitude(Ljava/lang/Double;)V

    .line 52
    invoke-virtual {p0}, Lbike/smarthalo/app/models/UserFavourite;->realmGet$favouriteType()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, 0x21ecdf

    const/4 v5, 0x1

    const/4 v6, 0x2

    if-eq v3, v4, :cond_3

    const v4, 0x28bf11

    if-eq v3, v4, :cond_2

    const v4, 0x3bddb089

    if-eq v3, v4, :cond_1

    goto :goto_1

    :cond_1
    const-string v3, "FAVOURITE"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    const-string v3, "WORK"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    const-string v3, "HOME"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v2, 0x2

    :cond_4
    :goto_1
    packed-switch v2, :pswitch_data_0

    goto :goto_2

    .line 60
    :pswitch_0
    invoke-virtual {v0, v5}, Lbike/smarthalo/app/models/SHLocation;->realmSet$type(I)V

    goto :goto_2

    .line 57
    :pswitch_1
    invoke-virtual {v0, v6}, Lbike/smarthalo/app/models/SHLocation;->realmSet$type(I)V

    goto :goto_2

    :pswitch_2
    const/4 v1, 0x3

    .line 54
    invoke-virtual {v0, v1}, Lbike/smarthalo/app/models/SHLocation;->realmSet$type(I)V

    :goto_2
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getFavouriteType()Lbike/smarthalo/app/models/FavouriteType;
    .locals 3

    .line 68
    invoke-virtual {p0}, Lbike/smarthalo/app/models/UserFavourite;->realmGet$favouriteType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x21ecdf

    if-eq v1, v2, :cond_2

    const v2, 0x28bf11

    if-eq v1, v2, :cond_1

    const v2, 0x3bddb089

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "FAVOURITE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    goto :goto_1

    :cond_1
    const-string v1, "WORK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    const-string v1, "HOME"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 75
    sget-object v0, Lbike/smarthalo/app/models/FavouriteType;->FAVOURITE:Lbike/smarthalo/app/models/FavouriteType;

    return-object v0

    .line 72
    :pswitch_0
    sget-object v0, Lbike/smarthalo/app/models/FavouriteType;->HOME:Lbike/smarthalo/app/models/FavouriteType;

    return-object v0

    .line 70
    :pswitch_1
    sget-object v0, Lbike/smarthalo/app/models/FavouriteType;->WORK:Lbike/smarthalo/app/models/FavouriteType;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public realmGet$address()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/models/UserFavourite;->address:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$createdAt()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/models/UserFavourite;->createdAt:Ljava/util/Date;

    return-object v0
.end method

.method public realmGet$favouriteType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/models/UserFavourite;->favouriteType:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$id()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/models/UserFavourite;->id:Ljava/lang/Integer;

    return-object v0
.end method

.method public realmGet$label()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/models/UserFavourite;->label:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$latitude()D
    .locals 2

    iget-wide v0, p0, Lbike/smarthalo/app/models/UserFavourite;->latitude:D

    return-wide v0
.end method

.method public realmGet$longitude()D
    .locals 2

    iget-wide v0, p0, Lbike/smarthalo/app/models/UserFavourite;->longitude:D

    return-wide v0
.end method

.method public realmGet$updatedAt()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/models/UserFavourite;->updatedAt:Ljava/util/Date;

    return-object v0
.end method

.method public realmGet$userId()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/models/UserFavourite;->userId:Ljava/lang/Integer;

    return-object v0
.end method

.method public realmSet$address(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lbike/smarthalo/app/models/UserFavourite;->address:Ljava/lang/String;

    return-void
.end method

.method public realmSet$createdAt(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lbike/smarthalo/app/models/UserFavourite;->createdAt:Ljava/util/Date;

    return-void
.end method

.method public realmSet$favouriteType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lbike/smarthalo/app/models/UserFavourite;->favouriteType:Ljava/lang/String;

    return-void
.end method

.method public realmSet$id(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lbike/smarthalo/app/models/UserFavourite;->id:Ljava/lang/Integer;

    return-void
.end method

.method public realmSet$label(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lbike/smarthalo/app/models/UserFavourite;->label:Ljava/lang/String;

    return-void
.end method

.method public realmSet$latitude(D)V
    .locals 0

    iput-wide p1, p0, Lbike/smarthalo/app/models/UserFavourite;->latitude:D

    return-void
.end method

.method public realmSet$longitude(D)V
    .locals 0

    iput-wide p1, p0, Lbike/smarthalo/app/models/UserFavourite;->longitude:D

    return-void
.end method

.method public realmSet$updatedAt(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lbike/smarthalo/app/models/UserFavourite;->updatedAt:Ljava/util/Date;

    return-void
.end method

.method public realmSet$userId(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lbike/smarthalo/app/models/UserFavourite;->userId:Ljava/lang/Integer;

    return-void
.end method

.method public setFavouriteType(Lbike/smarthalo/app/models/FavouriteType;)V
    .locals 1

    .line 82
    sget-object v0, Lbike/smarthalo/app/models/UserFavourite$1;->$SwitchMap$bike$smarthalo$app$models$FavouriteType:[I

    invoke-virtual {p1}, Lbike/smarthalo/app/models/FavouriteType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    const-string p1, "FAVOURITE"

    goto :goto_0

    :pswitch_0
    const-string p1, "HOME"

    goto :goto_0

    :pswitch_1
    const-string p1, "WORK"

    .line 95
    :goto_0
    invoke-virtual {p0, p1}, Lbike/smarthalo/app/models/UserFavourite;->realmSet$favouriteType(Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
