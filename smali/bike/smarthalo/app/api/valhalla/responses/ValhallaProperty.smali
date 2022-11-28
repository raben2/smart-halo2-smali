.class public Lbike/smarthalo/app/api/valhalla/responses/ValhallaProperty;
.super Ljava/lang/Object;
.source "ValhallaProperty.java"


# instance fields
.field private indices:[[I

.field private overallSummary:[[F
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "overall_summary"
    .end annotation
.end field

.field private summary:[[F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIndices()[[I
    .locals 1

    .line 14
    iget-object v0, p0, Lbike/smarthalo/app/api/valhalla/responses/ValhallaProperty;->indices:[[I

    return-object v0
.end method

.method public getOverallSummary()[[F
    .locals 1

    .line 22
    iget-object v0, p0, Lbike/smarthalo/app/api/valhalla/responses/ValhallaProperty;->overallSummary:[[F

    return-object v0
.end method

.method public getSummary()[[F
    .locals 1

    .line 18
    iget-object v0, p0, Lbike/smarthalo/app/api/valhalla/responses/ValhallaProperty;->summary:[[F

    return-object v0
.end method
