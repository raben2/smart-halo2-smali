.class public Lbike/smarthalo/app/api/valhalla/responses/ValhallaGeocodingFeatureProperties;
.super Ljava/lang/Object;
.source "ValhallaGeocodingFeatureProperties.java"


# instance fields
.field public country:Ljava/lang/String;

.field public houseNumber:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "housenumber"
    .end annotation
.end field

.field public label:Ljava/lang/String;

.field public locality:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public region:Ljava/lang/String;

.field public street:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
