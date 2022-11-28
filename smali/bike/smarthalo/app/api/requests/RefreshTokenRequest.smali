.class public Lbike/smarthalo/app/api/requests/RefreshTokenRequest;
.super Ljava/lang/Object;
.source "RefreshTokenRequest.java"


# instance fields
.field refreshToken:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "refresh_jwt"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lbike/smarthalo/app/api/requests/RefreshTokenRequest;->refreshToken:Ljava/lang/String;

    return-void
.end method
