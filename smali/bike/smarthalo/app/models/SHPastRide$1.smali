.class final Lbike/smarthalo/app/models/SHPastRide$1;
.super Ljava/lang/Object;
.source "SHPastRide.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbike/smarthalo/app/models/SHPastRide;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lbike/smarthalo/app/models/SHPastRide;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lbike/smarthalo/app/models/SHPastRide;
    .locals 1

    .line 140
    new-instance v0, Lbike/smarthalo/app/models/SHPastRide;

    invoke-direct {v0, p1}, Lbike/smarthalo/app/models/SHPastRide;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 137
    invoke-virtual {p0, p1}, Lbike/smarthalo/app/models/SHPastRide$1;->createFromParcel(Landroid/os/Parcel;)Lbike/smarthalo/app/models/SHPastRide;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lbike/smarthalo/app/models/SHPastRide;
    .locals 0

    .line 145
    new-array p1, p1, [Lbike/smarthalo/app/models/SHPastRide;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 137
    invoke-virtual {p0, p1}, Lbike/smarthalo/app/models/SHPastRide$1;->newArray(I)[Lbike/smarthalo/app/models/SHPastRide;

    move-result-object p1

    return-object p1
.end method
