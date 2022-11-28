.class public Lbike/smarthalo/app/models/RideDay;
.super Ljava/lang/Object;
.source "RideDay.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lbike/smarthalo/app/models/RideDay;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private calories:F

.field private co2:F

.field private day:Ljava/util/Date;

.field private dayInLong:J

.field private distance:F

.field private duration:I

.field private elevation:F

.field private pastRides:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lbike/smarthalo/app/models/SHPastRide;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    new-instance v0, Lbike/smarthalo/app/models/RideDay$1;

    invoke-direct {v0}, Lbike/smarthalo/app/models/RideDay$1;-><init>()V

    sput-object v0, Lbike/smarthalo/app/models/RideDay;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbike/smarthalo/app/models/RideDay;->pastRides:Ljava/util/ArrayList;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lbike/smarthalo/app/models/RideDay;->dayInLong:J

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lbike/smarthalo/app/models/RideDay;->distance:F

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lbike/smarthalo/app/models/RideDay;->elevation:F

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lbike/smarthalo/app/models/RideDay;->calories:F

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lbike/smarthalo/app/models/RideDay;->duration:I

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lbike/smarthalo/app/models/RideDay;->co2:F

    .line 53
    iget-object v0, p0, Lbike/smarthalo/app/models/RideDay;->pastRides:Ljava/util/ArrayList;

    sget-object v1, Lbike/smarthalo/app/models/SHPastRide;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;FFIFLbike/smarthalo/app/models/SHPastRide;)V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbike/smarthalo/app/models/RideDay;->pastRides:Ljava/util/ArrayList;

    .line 37
    iput-object p1, p0, Lbike/smarthalo/app/models/RideDay;->day:Ljava/util/Date;

    .line 38
    iput p2, p0, Lbike/smarthalo/app/models/RideDay;->distance:F

    .line 39
    iput p3, p0, Lbike/smarthalo/app/models/RideDay;->calories:F

    .line 40
    iput p4, p0, Lbike/smarthalo/app/models/RideDay;->duration:I

    .line 41
    iput p5, p0, Lbike/smarthalo/app/models/RideDay;->co2:F

    .line 42
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    iput-wide p1, p0, Lbike/smarthalo/app/models/RideDay;->dayInLong:J

    .line 43
    iget-object p1, p0, Lbike/smarthalo/app/models/RideDay;->pastRides:Ljava/util/ArrayList;

    invoke-virtual {p1, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public addPastRide(Lbike/smarthalo/app/models/SHPastRide;)V
    .locals 1

    .line 130
    iget-object v0, p0, Lbike/smarthalo/app/models/RideDay;->pastRides:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAverageSpeed()F
    .locals 2

    .line 90
    iget v0, p0, Lbike/smarthalo/app/models/RideDay;->distance:F

    iget v1, p0, Lbike/smarthalo/app/models/RideDay;->duration:I

    invoke-static {v0, v1}, Lbike/smarthalo/app/helpers/SHConversionHelper;->getAverageSpeed(FI)F

    move-result v0

    return v0
.end method

.method public getCalories()F
    .locals 1

    .line 102
    iget v0, p0, Lbike/smarthalo/app/models/RideDay;->calories:F

    return v0
.end method

.method public getCo2()F
    .locals 1

    .line 118
    iget v0, p0, Lbike/smarthalo/app/models/RideDay;->co2:F

    return v0
.end method

.method public getDay()Ljava/util/Date;
    .locals 3

    .line 69
    iget-object v0, p0, Lbike/smarthalo/app/models/RideDay;->day:Ljava/util/Date;

    if-eqz v0, :cond_0

    return-object v0

    .line 72
    :cond_0
    new-instance v0, Ljava/util/Date;

    iget-wide v1, p0, Lbike/smarthalo/app/models/RideDay;->dayInLong:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getDistance()F
    .locals 1

    .line 82
    iget v0, p0, Lbike/smarthalo/app/models/RideDay;->distance:F

    return v0
.end method

.method public getDuration()I
    .locals 1

    .line 110
    iget v0, p0, Lbike/smarthalo/app/models/RideDay;->duration:I

    return v0
.end method

.method public getElevation()F
    .locals 1

    .line 94
    iget v0, p0, Lbike/smarthalo/app/models/RideDay;->elevation:F

    return v0
.end method

.method public getPastRides()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lbike/smarthalo/app/models/SHPastRide;",
            ">;"
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lbike/smarthalo/app/models/RideDay;->pastRides:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setCalories(F)V
    .locals 0

    .line 106
    iput p1, p0, Lbike/smarthalo/app/models/RideDay;->calories:F

    return-void
.end method

.method public setCo2(F)V
    .locals 0

    .line 122
    iput p1, p0, Lbike/smarthalo/app/models/RideDay;->co2:F

    return-void
.end method

.method public setDay(Ljava/util/Date;)V
    .locals 2

    .line 77
    iput-object p1, p0, Lbike/smarthalo/app/models/RideDay;->day:Ljava/util/Date;

    .line 78
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lbike/smarthalo/app/models/RideDay;->dayInLong:J

    return-void
.end method

.method public setDistance(F)V
    .locals 0

    .line 86
    iput p1, p0, Lbike/smarthalo/app/models/RideDay;->distance:F

    return-void
.end method

.method public setDuration(I)V
    .locals 0

    .line 114
    iput p1, p0, Lbike/smarthalo/app/models/RideDay;->duration:I

    return-void
.end method

.method public setElevation(F)V
    .locals 0

    .line 98
    iput p1, p0, Lbike/smarthalo/app/models/RideDay;->elevation:F

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 140
    iget-wide v0, p0, Lbike/smarthalo/app/models/RideDay;->dayInLong:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 141
    iget p2, p0, Lbike/smarthalo/app/models/RideDay;->distance:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 142
    iget p2, p0, Lbike/smarthalo/app/models/RideDay;->elevation:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 143
    iget p2, p0, Lbike/smarthalo/app/models/RideDay;->calories:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 144
    iget p2, p0, Lbike/smarthalo/app/models/RideDay;->duration:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    iget p2, p0, Lbike/smarthalo/app/models/RideDay;->co2:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 146
    iget-object p2, p0, Lbike/smarthalo/app/models/RideDay;->pastRides:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
