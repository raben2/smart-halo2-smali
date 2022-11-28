.class public Lbike/smarthalo/app/api/requests/SHCreateFavouriteRequest;
.super Ljava/lang/Object;
.source "SHCreateFavouriteRequest.java"


# instance fields
.field private address:Ljava/lang/String;

.field private favourite_type:Lbike/smarthalo/app/models/FavouriteType;

.field private label:Ljava/lang/String;

.field private lat:D

.field private lng:D

.field private user_id:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Lbike/smarthalo/app/models/FavouriteType;Ljava/lang/String;Ljava/lang/String;DD)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lbike/smarthalo/app/api/requests/SHCreateFavouriteRequest;->user_id:Ljava/lang/Integer;

    .line 20
    iput-object p2, p0, Lbike/smarthalo/app/api/requests/SHCreateFavouriteRequest;->favourite_type:Lbike/smarthalo/app/models/FavouriteType;

    .line 21
    iput-object p3, p0, Lbike/smarthalo/app/api/requests/SHCreateFavouriteRequest;->address:Ljava/lang/String;

    .line 22
    iput-object p4, p0, Lbike/smarthalo/app/api/requests/SHCreateFavouriteRequest;->label:Ljava/lang/String;

    .line 23
    iput-wide p5, p0, Lbike/smarthalo/app/api/requests/SHCreateFavouriteRequest;->lat:D

    .line 24
    iput-wide p7, p0, Lbike/smarthalo/app/api/requests/SHCreateFavouriteRequest;->lng:D

    return-void
.end method
