.class final Lbike/smarthalo/app/models/FitnessIntegrations$1;
.super Ljava/lang/Object;
.source "FitnessIntegrations.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbike/smarthalo/app/models/FitnessIntegrations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lbike/smarthalo/app/models/FitnessIntegrations;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lbike/smarthalo/app/models/FitnessIntegrations;
    .locals 1

    .line 31
    new-instance v0, Lbike/smarthalo/app/models/FitnessIntegrations;

    invoke-direct {v0, p1}, Lbike/smarthalo/app/models/FitnessIntegrations;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lbike/smarthalo/app/models/FitnessIntegrations$1;->createFromParcel(Landroid/os/Parcel;)Lbike/smarthalo/app/models/FitnessIntegrations;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lbike/smarthalo/app/models/FitnessIntegrations;
    .locals 0

    .line 36
    new-array p1, p1, [Lbike/smarthalo/app/models/FitnessIntegrations;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lbike/smarthalo/app/models/FitnessIntegrations$1;->newArray(I)[Lbike/smarthalo/app/models/FitnessIntegrations;

    move-result-object p1

    return-object p1
.end method
