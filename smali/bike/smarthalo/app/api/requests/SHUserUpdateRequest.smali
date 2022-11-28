.class public Lbike/smarthalo/app/api/requests/SHUserUpdateRequest;
.super Ljava/lang/Object;
.source "SHUserUpdateRequest.java"


# instance fields
.field private user:Lbike/smarthalo/app/models/SHUser;


# direct methods
.method public constructor <init>(Lbike/smarthalo/app/models/SHUser;)V
    .locals 0
    .param p1    # Lbike/smarthalo/app/models/SHUser;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lbike/smarthalo/app/api/requests/SHUserUpdateRequest;->user:Lbike/smarthalo/app/models/SHUser;

    return-void
.end method
