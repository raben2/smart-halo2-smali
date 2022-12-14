.class public interface abstract Lorg/spongycastle/asn1/x509/X509AttributeIdentifiers;
.super Ljava/lang/Object;
.source "X509AttributeIdentifiers.java"


# static fields
.field public static final RoleSyntax:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_aca:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_aca_accessIdentity:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_aca_authenticationInfo:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_aca_chargingIdentity:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_aca_encAttrs:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_aca_group:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_at_clearance:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_at_role:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_ce_targetInformation:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_pe_aaControls:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_pe_ac_auditIdentity:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_pe_ac_proxying:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 10
    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.4.72"

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/x509/X509AttributeIdentifiers;->RoleSyntax:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 12
    sget-object v0, Lorg/spongycastle/asn1/x509/X509ObjectIdentifiers;->id_pe:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "4"

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/x509/X509AttributeIdentifiers;->id_pe_ac_auditIdentity:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 13
    sget-object v0, Lorg/spongycastle/asn1/x509/X509ObjectIdentifiers;->id_pe:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "6"

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/x509/X509AttributeIdentifiers;->id_pe_aaControls:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 14
    sget-object v0, Lorg/spongycastle/asn1/x509/X509ObjectIdentifiers;->id_pe:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "10"

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/x509/X509AttributeIdentifiers;->id_pe_ac_proxying:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 16
    sget-object v0, Lorg/spongycastle/asn1/x509/X509ObjectIdentifiers;->id_ce:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "55"

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/x509/X509AttributeIdentifiers;->id_ce_targetInformation:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 18
    sget-object v0, Lorg/spongycastle/asn1/x509/X509ObjectIdentifiers;->id_pkix:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "10"

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/x509/X509AttributeIdentifiers;->id_aca:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 20
    sget-object v0, Lorg/spongycastle/asn1/x509/X509AttributeIdentifiers;->id_aca:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/x509/X509AttributeIdentifiers;->id_aca_authenticationInfo:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 21
    sget-object v0, Lorg/spongycastle/asn1/x509/X509AttributeIdentifiers;->id_aca:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/x509/X509AttributeIdentifiers;->id_aca_accessIdentity:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 22
    sget-object v0, Lorg/spongycastle/asn1/x509/X509AttributeIdentifiers;->id_aca:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "3"

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/x509/X509AttributeIdentifiers;->id_aca_chargingIdentity:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 23
    sget-object v0, Lorg/spongycastle/asn1/x509/X509AttributeIdentifiers;->id_aca:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "4"

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/x509/X509AttributeIdentifiers;->id_aca_group:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 25
    sget-object v0, Lorg/spongycastle/asn1/x509/X509AttributeIdentifiers;->id_aca:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "6"

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/x509/X509AttributeIdentifiers;->id_aca_encAttrs:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 27
    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.4.72"

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/x509/X509AttributeIdentifiers;->id_at_role:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 28
    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.1.5.55"

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/x509/X509AttributeIdentifiers;->id_at_clearance:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    return-void
.end method
