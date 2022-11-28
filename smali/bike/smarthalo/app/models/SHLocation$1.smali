.class final Lbike/smarthalo/app/models/SHLocation$1;
.super Ljava/lang/Object;
.source "SHLocation.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbike/smarthalo/app/models/SHLocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lbike/smarthalo/app/models/SHLocation;
    .locals 3

    .line 173
    new-instance v0, Lbike/smarthalo/app/models/SHLocation;

    invoke-direct {v0}, Lbike/smarthalo/app/models/SHLocation;-><init>()V

    .line 175
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbike/smarthalo/app/models/SHLocation;->realmSet$key(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbike/smarthalo/app/models/SHLocation;->realmSet$title(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbike/smarthalo/app/models/SHLocation;->realmSet$description(Ljava/lang/String;)V

    .line 178
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbike/smarthalo/app/models/SHLocation;->realmSet$address(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lbike/smarthalo/app/models/SHLocation;->realmSet$type(I)V

    .line 180
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbike/smarthalo/app/models/SHLocation;->realmSet$latitude(Ljava/lang/Double;)V

    .line 181
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbike/smarthalo/app/models/SHLocation;->realmSet$longitude(Ljava/lang/Double;)V

    .line 182
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-virtual {v0, v1}, Lbike/smarthalo/app/models/SHLocation;->realmSet$speed(F)V

    .line 183
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-virtual {v0, v1}, Lbike/smarthalo/app/models/SHLocation;->realmSet$heading(F)V

    .line 184
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-virtual {v0, v1}, Lbike/smarthalo/app/models/SHLocation;->realmSet$accuracy(F)V

    .line 185
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lbike/smarthalo/app/models/SHLocation;->realmSet$timestamp(J)V

    .line 186
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lbike/smarthalo/app/models/SHLocation;->geocodingId:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 171
    invoke-virtual {p0, p1}, Lbike/smarthalo/app/models/SHLocation$1;->createFromParcel(Landroid/os/Parcel;)Lbike/smarthalo/app/models/SHLocation;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lbike/smarthalo/app/models/SHLocation;
    .locals 0

    .line 192
    new-array p1, p1, [Lbike/smarthalo/app/models/SHLocation;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 171
    invoke-virtual {p0, p1}, Lbike/smarthalo/app/models/SHLocation$1;->newArray(I)[Lbike/smarthalo/app/models/SHLocation;

    move-result-object p1

    return-object p1
.end method
