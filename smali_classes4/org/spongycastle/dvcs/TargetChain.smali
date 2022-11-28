.class public Lorg/spongycastle/dvcs/TargetChain;
.super Ljava/lang/Object;
.source "TargetChain.java"


# instance fields
.field private final certs:Lorg/spongycastle/asn1/dvcs/TargetEtcChain;


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/dvcs/TargetEtcChain;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lorg/spongycastle/dvcs/TargetChain;->certs:Lorg/spongycastle/asn1/dvcs/TargetEtcChain;

    return-void
.end method


# virtual methods
.method public toASN1Structure()Lorg/spongycastle/asn1/dvcs/TargetEtcChain;
    .locals 1

    .line 16
    iget-object v0, p0, Lorg/spongycastle/dvcs/TargetChain;->certs:Lorg/spongycastle/asn1/dvcs/TargetEtcChain;

    return-object v0
.end method
