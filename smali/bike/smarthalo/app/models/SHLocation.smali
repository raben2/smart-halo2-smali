.class public Lbike/smarthalo/app/models/SHLocation;
.super Lio/realm/RealmObject;
.source "SHLocation.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lio/realm/bike_smarthalo_app_models_SHLocationRealmProxyInterface;


# static fields
.field public static final COORDINATES_ARE_EQUAL_DELTA:D = 1.0E-10

.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field public static final TYPE_BIKE:I = 0x4

.field public static final TYPE_DEFAULT:I = 0x0

.field public static final TYPE_EMPTY_SEPARATOR:I = 0x7

.field public static final TYPE_FAVOURITE:I = 0x3

.field public static final TYPE_HISTORY:I = 0x5

.field public static final TYPE_HOME:I = 0x1

.field public static final TYPE_SEARCH_RESULT:I = 0x6

.field public static final TYPE_WORK:I = 0x2


# instance fields
.field public accuracy:F

.field public address:Ljava/lang/String;

.field public altitude:Ljava/lang/Double;

.field public description:Ljava/lang/String;

.field public geocodingId:Ljava/lang/String;
    .annotation runtime Lio/realm/annotations/Ignore;
    .end annotation
.end field

.field public heading:F

.field public key:Ljava/lang/String;
    .annotation runtime Lio/realm/annotations/PrimaryKey;
    .end annotation

    .annotation runtime Lio/realm/annotations/Required;
    .end annotation
.end field

.field public latitude:Ljava/lang/Double;
    .annotation runtime Lio/realm/annotations/Required;
    .end annotation
.end field

.field public longitude:Ljava/lang/Double;
    .annotation runtime Lio/realm/annotations/Required;
    .end annotation
.end field

.field public speed:F

.field public timestamp:J

.field public title:Ljava/lang/String;

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 171
    new-instance v0, Lbike/smarthalo/app/models/SHLocation$1;

    invoke-direct {v0}, Lbike/smarthalo/app/models/SHLocation$1;-><init>()V

    sput-object v0, Lbike/smarthalo/app/models/SHLocation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Lio/realm/RealmObject;-><init>()V

    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realm$injectObjectContext()V

    :cond_0
    const-string v0, "location"

    .line 28
    invoke-virtual {p0, v0}, Lbike/smarthalo/app/models/SHLocation;->realmSet$key(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 34
    invoke-virtual {p0, v0}, Lbike/smarthalo/app/models/SHLocation;->realmSet$type(I)V

    return-void
.end method

.method public static buildSHLocation(Landroid/location/Location;Ljava/lang/Long;)Lbike/smarthalo/app/models/SHLocation;
    .locals 3

    .line 103
    new-instance v0, Lbike/smarthalo/app/models/SHLocation;

    invoke-direct {v0}, Lbike/smarthalo/app/models/SHLocation;-><init>()V

    .line 105
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lbike/smarthalo/app/models/SHLocation;->realmSet$timestamp(J)V

    .line 106
    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHLocation;->realmGet$timestamp()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lbike/smarthalo/app/models/SHLocation;->realmSet$key(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {v0, p1}, Lbike/smarthalo/app/models/SHLocation;->realmSet$latitude(Ljava/lang/Double;)V

    .line 108
    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {v0, p1}, Lbike/smarthalo/app/models/SHLocation;->realmSet$longitude(Ljava/lang/Double;)V

    .line 109
    invoke-virtual {p0}, Landroid/location/Location;->getAltitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {v0, p1}, Lbike/smarthalo/app/models/SHLocation;->realmSet$altitude(Ljava/lang/Double;)V

    .line 110
    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result p1

    invoke-virtual {v0, p1}, Lbike/smarthalo/app/models/SHLocation;->realmSet$accuracy(F)V

    .line 111
    invoke-virtual {p0}, Landroid/location/Location;->hasSpeed()Z

    move-result p1

    const/high16 v1, -0x40800000    # -1.0f

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/location/Location;->getSpeed()F

    move-result p1

    goto :goto_0

    :cond_0
    const/high16 p1, -0x40800000    # -1.0f

    :goto_0
    invoke-virtual {v0, p1}, Lbike/smarthalo/app/models/SHLocation;->realmSet$speed(F)V

    .line 112
    invoke-virtual {p0}, Landroid/location/Location;->hasBearing()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/location/Location;->getBearing()F

    move-result v1

    :cond_1
    invoke-virtual {v0, v1}, Lbike/smarthalo/app/models/SHLocation;->realmSet$heading(F)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 3

    .line 89
    new-instance v0, Landroid/location/Location;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHLocation;->realmGet$latitude()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLatitude(D)V

    .line 91
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHLocation;->realmGet$longitude()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLongitude(D)V

    return-object v0
.end method

.method public getNavigationDescription()Ljava/lang/String;
    .locals 1

    .line 147
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHLocation;->realmGet$title()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbike/smarthalo/app/helpers/StringHelper;->hasValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHLocation;->realmGet$title()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHLocation;->realmGet$address()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getSHLatLng()Lbike/smarthalo/app/models/SHLatLng;
    .locals 4

    .line 85
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHLocation;->realmGet$latitude()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHLocation;->realmGet$longitude()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lbike/smarthalo/app/models/SHLatLng;->buildSHLatLng(DD)Lbike/smarthalo/app/models/SHLatLng;

    move-result-object v0

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 143
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHLocation;->realmGet$timestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasValidLocationData()Z
    .locals 1

    .line 118
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHLocation;->realmGet$latitude()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHLocation;->realmGet$longitude()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFavourite()Z
    .locals 3

    .line 97
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHLocation;->realmGet$type()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHLocation;->realmGet$type()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHLocation;->realmGet$type()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public isValidForNavigation()Z
    .locals 1

    .line 122
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHLocation;->hasValidLocationData()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHLocation;->realmGet$address()Ljava/lang/String;

    move-result-object v0

    .line 123
    invoke-static {v0}, Lbike/smarthalo/app/helpers/StringHelper;->hasValue(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHLocation;->realmGet$title()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbike/smarthalo/app/helpers/StringHelper;->hasValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public realmGet$accuracy()F
    .locals 1

    iget v0, p0, Lbike/smarthalo/app/models/SHLocation;->accuracy:F

    return v0
.end method

.method public realmGet$address()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/models/SHLocation;->address:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$altitude()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/models/SHLocation;->altitude:Ljava/lang/Double;

    return-object v0
.end method

.method public realmGet$description()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/models/SHLocation;->description:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$heading()F
    .locals 1

    iget v0, p0, Lbike/smarthalo/app/models/SHLocation;->heading:F

    return v0
.end method

.method public realmGet$key()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/models/SHLocation;->key:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$latitude()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/models/SHLocation;->latitude:Ljava/lang/Double;

    return-object v0
.end method

.method public realmGet$longitude()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/models/SHLocation;->longitude:Ljava/lang/Double;

    return-object v0
.end method

.method public realmGet$speed()F
    .locals 1

    iget v0, p0, Lbike/smarthalo/app/models/SHLocation;->speed:F

    return v0
.end method

.method public realmGet$timestamp()J
    .locals 2

    iget-wide v0, p0, Lbike/smarthalo/app/models/SHLocation;->timestamp:J

    return-wide v0
.end method

.method public realmGet$title()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/models/SHLocation;->title:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$type()I
    .locals 1

    iget v0, p0, Lbike/smarthalo/app/models/SHLocation;->type:I

    return v0
.end method

.method public realmSet$accuracy(F)V
    .locals 0

    iput p1, p0, Lbike/smarthalo/app/models/SHLocation;->accuracy:F

    return-void
.end method

.method public realmSet$address(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lbike/smarthalo/app/models/SHLocation;->address:Ljava/lang/String;

    return-void
.end method

.method public realmSet$altitude(Ljava/lang/Double;)V
    .locals 0

    iput-object p1, p0, Lbike/smarthalo/app/models/SHLocation;->altitude:Ljava/lang/Double;

    return-void
.end method

.method public realmSet$description(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lbike/smarthalo/app/models/SHLocation;->description:Ljava/lang/String;

    return-void
.end method

.method public realmSet$heading(F)V
    .locals 0

    iput p1, p0, Lbike/smarthalo/app/models/SHLocation;->heading:F

    return-void
.end method

.method public realmSet$key(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lbike/smarthalo/app/models/SHLocation;->key:Ljava/lang/String;

    return-void
.end method

.method public realmSet$latitude(Ljava/lang/Double;)V
    .locals 0

    iput-object p1, p0, Lbike/smarthalo/app/models/SHLocation;->latitude:Ljava/lang/Double;

    return-void
.end method

.method public realmSet$longitude(Ljava/lang/Double;)V
    .locals 0

    iput-object p1, p0, Lbike/smarthalo/app/models/SHLocation;->longitude:Ljava/lang/Double;

    return-void
.end method

.method public realmSet$speed(F)V
    .locals 0

    iput p1, p0, Lbike/smarthalo/app/models/SHLocation;->speed:F

    return-void
.end method

.method public realmSet$timestamp(J)V
    .locals 0

    iput-wide p1, p0, Lbike/smarthalo/app/models/SHLocation;->timestamp:J

    return-void
.end method

.method public realmSet$title(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lbike/smarthalo/app/models/SHLocation;->title:Ljava/lang/String;

    return-void
.end method

.method public realmSet$type(I)V
    .locals 0

    iput p1, p0, Lbike/smarthalo/app/models/SHLocation;->type:I

    return-void
.end method

.method public setLatitude(Ljava/lang/Double;)V
    .locals 0

    .line 131
    invoke-virtual {p0, p1}, Lbike/smarthalo/app/models/SHLocation;->realmSet$latitude(Ljava/lang/Double;)V

    return-void
.end method

.method public setLongitude(Ljava/lang/Double;)V
    .locals 0

    .line 127
    invoke-virtual {p0, p1}, Lbike/smarthalo/app/models/SHLocation;->realmSet$longitude(Ljava/lang/Double;)V

    return-void
.end method

.method public setSpeed(F)V
    .locals 0

    .line 135
    invoke-virtual {p0, p1}, Lbike/smarthalo/app/models/SHLocation;->realmSet$speed(F)V

    return-void
.end method

.method public setTimestamp(J)V
    .locals 0

    .line 139
    invoke-virtual {p0, p1, p2}, Lbike/smarthalo/app/models/SHLocation;->realmSet$timestamp(J)V

    return-void
.end method

.method public setValuesFromString(Ljava/lang/String;)Lbike/smarthalo/app/models/SHLocation;
    .locals 4

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    const-string v0, ", "

    .line 59
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 61
    aget-object v1, v0, v1

    invoke-virtual {p0, v1}, Lbike/smarthalo/app/models/SHLocation;->realmSet$title(Ljava/lang/String;)V

    .line 63
    array-length v1, v0

    const/4 v2, 0x4

    if-le v1, v2, :cond_2

    const-string p1, ""

    .line 64
    invoke-virtual {p0, p1}, Lbike/smarthalo/app/models/SHLocation;->realmSet$address(Ljava/lang/String;)V

    const/4 p1, 0x1

    const/4 v1, 0x1

    .line 66
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_3

    .line 67
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHLocation;->realmGet$address()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lbike/smarthalo/app/models/SHLocation;->realmSet$address(Ljava/lang/String;)V

    .line 69
    array-length v2, v0

    sub-int/2addr v2, p1

    if-ge v1, v2, :cond_1

    .line 70
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHLocation;->realmGet$address()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lbike/smarthalo/app/models/SHLocation;->realmSet$address(Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 74
    :cond_2
    invoke-virtual {p0, p1}, Lbike/smarthalo/app/models/SHLocation;->realmSet$address(Ljava/lang/String;)V

    .line 77
    :cond_3
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHLocation;->realmGet$description()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_4

    .line 78
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHLocation;->realmGet$address()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lbike/smarthalo/app/models/SHLocation;->realmSet$description(Ljava/lang/String;)V

    :cond_4
    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 157
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHLocation;->realmGet$key()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHLocation;->realmGet$title()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHLocation;->realmGet$description()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHLocation;->realmGet$address()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHLocation;->realmGet$type()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHLocation;->realmGet$latitude()Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 163
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHLocation;->realmGet$longitude()Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 164
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHLocation;->realmGet$speed()F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 165
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHLocation;->realmGet$heading()F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 166
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHLocation;->realmGet$accuracy()F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 167
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHLocation;->realmGet$timestamp()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 168
    iget-object p2, p0, Lbike/smarthalo/app/models/SHLocation;->geocodingId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
