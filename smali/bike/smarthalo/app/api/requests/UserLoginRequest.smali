.class public Lbike/smarthalo/app/api/requests/UserLoginRequest;
.super Ljava/lang/Object;
.source "UserLoginRequest.java"


# instance fields
.field private email:Ljava/lang/String;

.field private password:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lbike/smarthalo/app/api/requests/UserLoginRequest;->email:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lbike/smarthalo/app/api/requests/UserLoginRequest;->password:Ljava/lang/String;

    return-void
.end method
